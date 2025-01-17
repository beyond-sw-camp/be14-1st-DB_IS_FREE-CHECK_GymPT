-- 아이디로 쓰일 이메일 중복 확인(user_id는 자동증가 고유값)
SELECT COUNT(*) AS email_count
FROM user
WHERE user_email = 'example@example.com';