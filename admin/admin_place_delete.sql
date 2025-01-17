-- 관리자 권한 확인 후 삭제
IF (SELECT user_grant
    FROM user
    WHERE user_id = 5) = 'Y' THEN
-- 관리자 권한이 있을 경우 삭제
    DELETE FROM wPlace
    WHERE wplace_id = 12;
ELSE
    SELECT '관리자가 아니므로 삭제가 불가합니다';
END IF;