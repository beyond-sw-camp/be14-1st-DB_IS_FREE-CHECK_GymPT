

-- 특정 게시글 하나에 대한 조회시 게시글 과 댓글
-- 대댓글을 조회하는 기능
SELECT p.post_id
     , p.post_title
     , p.post_content
     , COALESCE(post_updated_at, post_created_at)           AS post_effective_date
     , u.user_id
     , u.user_nickname
     , u.user_image
     , c.comment_title
     , c.comment_id
     , c.comment_id2
     , COALESCE(c.comment_updated_at, c.comment_created_at) AS comment_date
FROM community_post p
         JOIN user u ON u.user_id = p.user_id
         JOIN comment c ON c.post_id = p.post_id
WHERE post_is_blinded = FALSE
  AND c.post_id = 2
-- 해당 코멘트의 포스트 id가 1인 모든 댓글 출력
ORDER BY comment_id ASC;
