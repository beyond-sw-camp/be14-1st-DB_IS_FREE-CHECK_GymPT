-- 게시글 조회 기능
SELECT post_id
     , post_title
     , COALESCE(post_updated_at, post_created_at) AS post_effective_date
     , u.user_id
     , u.user_nickname
     , u.user_image
FROM community_post
         JOIN user u ON u.user_id = post_id
WHERE post_is_blinded = FALSE
ORDER BY post_created_at ASC;
