-- 커뮤니티 댓글 수정
UPDATE comment
SET comment_title = '수정 기능 테스트',
    comment_updated_at = CURRENT_DATE
WHERE comment_id = 3;