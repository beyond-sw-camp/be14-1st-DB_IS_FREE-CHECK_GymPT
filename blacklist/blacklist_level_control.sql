-- 블랙리스트 레벨 관리 기능 추가

SELECT *
FROM blacklist AS before_level_control;

DROP PROCEDURE IF EXISTS level_control;

DELIMITER //

CREATE PROCEDURE IF NOT EXISTS level_control()
body:
BEGIN
    DECLARE ui INT(11);
    DECLARE counting INT(11);

    SELECT reported_id
    INTO ui
    FROM (SELECT reported_id,
                 COUNT(*) AS count
          FROM report
          WHERE report_YN = TRUE
          GROUP BY reported_id) AS a
    WHERE count >= 3;

    SELECT COUNT(*)
    INTO counting
    FROM report
    WHERE report_YN = TRUE
      AND reported_id = ui;

    IF ui IN (SELECT user_id FROM blacklist) THEN LEAVE body; END IF;

    CASE
        WHEN counting = 3 THEN INSERT INTO blacklist (user_id, start_date, end_date, report_num, level)
                               VALUES (ui, CURDATE(), CURDATE() + 7, counting, 1);
        WHEN counting = 4 THEN UPDATE blacklist
                               SET start_date = CURDATE(),
                                   end_date   = CURDATE() + 7,
                                   report_num = counting,
                                   level      = 2
                               WHERE user_id = ui;
        WHEN counting >= 5 THEN UPDATE blacklist
                                SET start_date = CURDATE(),
                                    end_date   = '0000-00-00',
                                    report_num = counting,
                                    level      = 3
                                WHERE user_id = ui;
        ELSE SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid report count provided';
        END CASE;
END //

DELIMITER ;

CALL level_control();

SELECT *
FROM blacklist AS after_level_control;