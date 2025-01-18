-- 커뮤니티 댓글 삭제
SET FOREIGN_KEY_CHECKS = 0;
DELETE
FROM comment
WHERE comment_id = 1;
SET FOREIGN_KEY_CHECKS = 1;

SELECT * FROM comment;
SELECT * FROM community_post;