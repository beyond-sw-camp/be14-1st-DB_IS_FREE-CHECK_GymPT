-- 회원 탈퇴를 하면 회원 테이블에 탈퇴 일자 생성하는 기능
-- NULL 아닌사람 조회로 탈퇴 여부 판단 가능
UPDATE user
SET user_leave = CURDATE()
WHERE user_id = '1';

-- 1번 회원이 DB에서 탈퇴일자 업데이트가 이뤄졌는지 확인
SELECT user_id, user_leave
FROM user
WHERE user_id = '1';

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



