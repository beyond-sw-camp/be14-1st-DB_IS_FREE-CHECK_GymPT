-- 탈퇴일자가 NOT NULL 일경우 '이 회원은 탈퇴하였습니다'메시지로
-- 탈퇴여부 확인 가능 및, 기능제한 되었다고 판단
-- <<<#1회원 아이디로 탈퇴한 회원인지 확인하는 구문>>>
SELECT user_id,
       user_name, -- 컬럼명 수정
       CASE
           WHEN user_leave IS NOT NULL THEN '이 회원은 탈퇴하였습니다.'
           ELSE '정상적으로 기능을 사용할 수 있습니다.'
           END AS 기능상태
FROM user
WHERE user_id = 1; -- user_id가 INT 형이라 따옴표 제거했습니다.



