/*
name: 댓글 조회 기능 구현
about: 사용자가 게시글에서 댓글을 볼수 있는 기능을 구현한다.
*/
SELECT c.comment_id
     , c.comment_title
     , c.comment_create_at
     , c.user_id
     , c.post_id
     , c.comment_id2 AS childe_reply -- 대댓글
     , u.user_nickname
FROM comment c
         JOIN user u ON c.user_id = u.user_id
WHERE comment_is_blinded = FALSE
ORDER BY comment_create_at DESC;
