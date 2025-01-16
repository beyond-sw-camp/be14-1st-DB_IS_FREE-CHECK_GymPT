-- 댓글 조회 기능 구현
  SELECT
         c.comment_id,
         c.comment_title,
         c.comment_create_at,
         c.user_id,
         c.post_id,
         c.comment_id2 AS childe_reply -- 대댓글
    FROM comment c
   WHERE comment_is_blinded = FALSE
ORDER BY comment_create_at DESC;
