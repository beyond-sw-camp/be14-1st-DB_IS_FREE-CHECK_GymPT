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