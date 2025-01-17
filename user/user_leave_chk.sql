-- 1번 회원이 DB에서 탈퇴일자 업데이트가 이뤄졌는지 확인
SELECT user_id, user_leave
FROM user
WHERE user_id = '1';