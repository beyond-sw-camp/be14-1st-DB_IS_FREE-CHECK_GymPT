-- 회원 탈퇴를 하면 회원 테이블에 탈퇴 일자 생성하는 기능
-- NULL 아닌사람 조회로 탈퇴 여부 판단 가능
UPDATE user
SET user_leave = CURDATE()
WHERE user_id = '1'

-- 1번 회원이 DB에서 탈퇴일자 업데이트가 이뤄졌는지 확인
SELECT user_id, user_leave
FROM user
WHERE user_id = '1';

-- 탈퇴일자가 NOT NULL 일경우 '이 회원은 탈퇴하였습니다'메시지로
-- 탈퇴여부 확인 가능 및, 기능제한 되었다고 판단
-- <<<#1회원 아이디로 탈퇴한 회원인지 확인하는 구문>>>
SELECT user_id,
       name,
       CASE
           WHEN user_leave IS NOT NULL THEN '이 회원은 탈퇴하였습니다.'
           ELSE '정상적으로 기능을 사용할 수 있습니다.'
           END AS 기능상태
FROM user
WHERE user_id = '1';

-- NEW 를 통해 트리거가 실행 된 이후에 갱신된 값 확인
-- 블랙리스트 레벨이 3이 되었을 경우 회원정보 테이블 user_leave에 현재 일자 저장.
-- 블랙리스트 레벨 3가 되었을경우 user_leave의 값이 NOT NULL 이 되고,
-- 회원아이디를 통해 level3 = 탈퇴한 사람
DELIMITER //

CREATE TRIGGER blacklist_level_update
    AFTER UPDATE ON blacklist
    FOR EACH ROW
BEGIN
    -- blacklist 테이블에서 level이 3으로 변경 되면,
    IF NEW.level = 3 THEN
    UPDATE 회원정보테이블
    SET user_leave = CURDATE()
    WHERE user_id = NEW.user_id; -- blacklist와 회원정보테이블의 user_id 연결
END IF;
END //

DELIMITER ;


