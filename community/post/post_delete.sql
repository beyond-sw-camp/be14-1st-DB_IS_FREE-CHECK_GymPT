-- 사용자가 게시글 삭제 시 기존 데이터 삭제하는 기능 추가.
SET FOREIGN_KEY_CHECKS = 0; -- 외래 키 제약 비활성화
DELETE FROM community_post
WHERE post_id = 1;
SET FOREIGN_KEY_CHECKS = 1; -- 외래 키 제약 다시 활성화