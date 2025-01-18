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