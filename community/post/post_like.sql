-- 게시글 좋아요 등록(post_like)
INSERT INTO post_like (post_id, user_id)
VALUES (1,2)
ON DUPLICATE KEY UPDATE post_id = post_id;  -- 이미 존재하면 아무 것도 하지 않음

-- 게시글 좋아요 취소(post_like)
DELETE FROM post_like
WHERE post_id = 1 AND user_id = 2;