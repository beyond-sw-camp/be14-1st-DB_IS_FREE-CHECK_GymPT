-- 게시글 조회 기능
SELECT p.post_id
     , p.post_title
     , p.post_content
     , COALESCE(post_updated_at, post_created_at) AS post_effective_date
     , u.user_id
     , u.user_nickname
     , u.user_image
FROM community_post p
         JOIN user u ON u.user_id = p.user_id
WHERE post_is_blinded = FALSE
ORDER BY post_created_at DESC;
