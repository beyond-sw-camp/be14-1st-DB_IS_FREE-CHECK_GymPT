-- 닉네임 중복 확인
SELECT COUNT(*) AS nickname_count
FROM user
WHERE user_nickname = 'nickname123';