-- 회원 탈퇴 SQL: 특정 회원의 탈퇴 처리
UPDATE user
SET
    user_leave = CURDATE()
WHERE
    user_id = 1;