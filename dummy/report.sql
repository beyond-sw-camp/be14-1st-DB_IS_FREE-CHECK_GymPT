-- 각 테이블 별 신고 기능

DROP PROCEDURE IF EXISTS reporting;

DELIMITER //

CREATE PROCEDURE IF NOT EXISTS reporting(
    IN reporter INT(11) -- 신고자
, IN category INT(11)-- 신고 중인 글의 테이블
, IN reporting INT(11) -- 신고 중인 글
, IN reason VARCHAR(9000) -- 신고사유
)
BEGIN
    DECLARE reporting_id INT;

    CASE
        WHEN category = 1 THEN SELECT user_id
                               INTO reporting_id
                               FROM community_post
                               WHERE post_id = reporting;
        WHEN category = 2 THEN SELECT user_id
                               INTO reporting_id
                               FROM comment
                               WHERE comment_id = reporting;
        WHEN category = 3 THEN SELECT user_id
                               INTO reporting_id
                               FROM place_review
                               WHERE review_id = reporting;
        WHEN category = 4 THEN SELECT user_id
                               INTO reporting_id
                               FROM studio_review
                               WHERE review_id = reporting;
        ELSE SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid category provided';
        END CASE;

    INSERT
    INTO report ( user_id
                , report_reason
                , report_YN
                , reported_id
                , report_category
                , post_id
                , comment_id
                , review_id
                , review_id2)
    VALUES ( reporter
           , reason
           , DEFAULT
           , reporting_id
           , category -- 1,2,3,4
           , (IF(report_category != 1, NULL, reporting)) -- 신고 중인 글
           , (IF(report_category != 2, NULL, reporting)) -- 신고 중인 댓글
           , (IF(report_category != 3, NULL, reporting)) -- 신고 중인 운동장소 리뷰
           , (IF(report_category != 4, NULL, reporting))); -- 신고 중인 스튜디오 리뷰
END //

DELIMITER ;

CALL reporting(3
    , 2
    , 2
    , 'asdf');

-- 신고 5회 이상일 시 해당 글 블라인드 기능 추가

UPDATE community_post
SET post_is_blinded = TRUE
WHERE post_id IN (SELECT post_id
                  FROM (SELECT post_id
                             , COUNT(*) AS count
                        FROM report
                        GROUP BY post_id) AS a
                  WHERE count >= 5
                    AND post_id IS NOT NULL);

UPDATE comment
SET comment_is_blinded = TRUE
WHERE comment_id IN (SELECT comment_id
                     FROM (SELECT comment_id
                                , COUNT(*) AS count
                           FROM report
                           GROUP BY comment_id) AS a
                     WHERE count >= 5
                       AND comment_id IS NOT NULL);

UPDATE place_review
SET review_is_blinded = TRUE
WHERE review_id IN (SELECT review_id
                    FROM (SELECT review_id
                               , COUNT(*) AS count
                          FROM report
                          GROUP BY review_id) AS a
                    WHERE count >= 5
                      AND review_id IS NOT NULL);

UPDATE studio_review
SET review_is_blinded = TRUE
WHERE review_id IN (SELECT review_id
                    FROM (SELECT review_id
                               , COUNT(*) AS count
                          FROM report
                          GROUP BY review_id) AS a
                    WHERE count >= 5
                      AND review_id IS NOT NULL);

-- 관리자 신고 내역에서 처리 기능 추가
UPDATE report
SET report_YN = TRUE
WHERE report_id = 1;

-- 신고 처리 유무에 따른 글 삭제 기능 추가
SET FOREIGN_KEY_CHECKS = 0;
DELETE
FROM community_post
WHERE post_id = (SELECT post_id
                 FROM report
                 WHERE report_YN = TRUE);
SET FOREIGN_KEY_CHECKS = 1;

SET FOREIGN_KEY_CHECKS = 0;
DELETE
FROM comment
WHERE comment_id = (SELECT comment_id
                    FROM report
                    WHERE report_YN = TRUE);
SET FOREIGN_KEY_CHECKS = 1;

SET FOREIGN_KEY_CHECKS = 0;
DELETE
FROM place_review
WHERE review_id = (SELECT review_id
                   FROM report
                   WHERE report_YN = TRUE);
SET FOREIGN_KEY_CHECKS = 1;

SET FOREIGN_KEY_CHECKS = 0;
DELETE
FROM studio_review
WHERE review_id = (SELECT review_id
                   FROM report
                   WHERE report_YN = TRUE);
SET FOREIGN_KEY_CHECKS = 1;

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