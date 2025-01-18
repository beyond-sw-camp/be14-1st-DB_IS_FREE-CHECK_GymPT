# 게시물 제목의 특정 키워드로 검색
SELECT p.post_id
     , p.post_title
     , p.post_content
     , p.post_created_at
     , p.post_updated_at
     , p.user_id
     , COUNT(c.comment_id)
FROM community_post p
         JOIN comment c ON c.post_id = p.post_id
WHERE post_is_blinded = 0
  AND c.comment_is_blinded = 0
  AND p.post_title LIKE '%초%'
ORDER BY p.post_created_at DESC;

# 게시물 내용의 특정 키워드로 검색
SELECT p.post_id
     , p.post_title
     , p.post_content
     , p.post_created_at
     , p.post_updated_at
     , p.user_id
     , COUNT(c.comment_id)
FROM community_post p
         JOIN comment c ON c.post_id = p.post_id
WHERE post_is_blinded = 0
  AND c.comment_is_blinded = 0
  AND p.post_content LIKE '%런지%'
ORDER BY p.post_created_at DESC;

# 제목, 내용 둘다 포함된 키워드 검색
SELECT p.post_id
     , p.post_title
     , p.post_content
     , p.post_created_at
     , p.post_updated_at
     , p.user_id
     , COUNT(c.comment_id) AS comment_count
FROM community_post p
         JOIN comment c ON c.post_id = p.post_id
WHERE post_is_blinded = 0
  AND c.comment_is_blinded = 0
  AND (p.post_title LIKE '%운동%'
    OR p.post_content LIKE '%운동%')
GROUP BY p.post_id, p.post_title, p.post_content, p.post_created_at, p.post_updated_at, p.user_id
ORDER BY p.post_created_at DESC;