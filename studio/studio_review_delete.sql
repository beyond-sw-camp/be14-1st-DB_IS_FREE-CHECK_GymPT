-- 스튜디오 리뷰 삭제
DELETE
FROM studio_review
WHERE review_id = 3;

SET FOREIGN_KEY_CHECKS = 0; -- 외래키 참조 해제