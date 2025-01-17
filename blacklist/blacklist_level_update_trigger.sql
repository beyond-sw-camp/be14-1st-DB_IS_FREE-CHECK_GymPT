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
    UPDATE user
    SET user_leave = CURDATE()
    WHERE user_id = NEW.user_id; -- blacklist와 회원정보테이블의 user_id 연결
END IF;
END //

DELIMITER ;
