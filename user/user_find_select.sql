-- 유저 아이디 찾기 기능

SELECT user_email
FROM user
WHERE user_name = '정유진'
  AND user_phone = '010-5678-9012';

-- 유저 비밀번호 찾기 기능

SELECT user_pw
FROM user
WHERE user_name = '정유진'
  AND user_phone = '010-5678-9012'
  AND user_email = 'jung2345@naver.com';
