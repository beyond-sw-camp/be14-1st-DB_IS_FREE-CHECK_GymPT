-- 게시글 조회 기능
SELECT community_post.post_id
     , community_post.post_title
     , community_post.post_created_at
     , community_post.post_updated_at
     , u.user_id
     , u.user_nickname
     , u.user_image
FROM community_post
         JOIN user u ON u.user_id
WHERE post_is_blinded = FALSE
ORDER BY post_created_at ASC;
