-- 회원 탈퇴 SQL: 특정 회원의 탈퇴 처리
UPDATE `user`
SET
    `user_leave` = CURDATE()
WHERE
    `user_id` = 0;

-- 전체 데이터 삭제
DELETE FROM `user`;

-- 전체 데이터 삭제 및 AUTO_INCREMENT 초기화
TRUNCATE TABLE `user`;
