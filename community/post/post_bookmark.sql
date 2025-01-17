-- 북마크 등록(post_bookmark)
INSERT INTO post_bookmark (post_id, user_id)
VALUES (1, 2)
ON DUPLICATE KEY UPDATE post_id = post_id;  -- 이미 존재하면 아무 것도 하지 않음

-- 북마크 취소(post_bookmark)
DELETE FROM post_bookmark
WHERE post_id = 1 AND user_id = 2;