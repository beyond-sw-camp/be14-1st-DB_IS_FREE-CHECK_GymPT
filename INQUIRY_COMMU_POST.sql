-- 게시글 조회 기능
SELECT
       community_post.post_id,
       community_post.post_title,
       community_post.post_created_at,
       community_post.post_updated_at,
       community_post.user_id
  FROM community_post
 WHERE post_is_blinded = FALSE;
