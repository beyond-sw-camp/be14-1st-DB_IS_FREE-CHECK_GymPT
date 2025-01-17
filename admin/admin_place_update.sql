IF (SELECT user_grant
    FROM user
    WHERE user_id = 5) = 'Y' THEN
-- 관리자 권한이 있을 경우 수정
    UPDATE wPlace
    SET wplace_name = '동작 국립 헬스장',
        wplace_address = '서울특별시 보라매로 87',
        wplace_des = '기구가 친절하고 관장님이 좋네요'
    WHERE wplace_id = 2;
ELSE
    SELECT '관리자가 아니므로 수정이 불가합니다';
END IF;