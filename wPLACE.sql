-- 관리자 : user_id => 5
-- 관리자 권한 확인 후 운동장소 (등록)
IF ((SELECT user_grant
     FROM user
     WHERE user_id = 5) = 'Y') THEN
    INSERT INTO wplace (wplace_name, wplace_address, wplace_des, wcreate_at, wupdate_at, user_id)
    VALUES ('인천2헬스장', '인천 어딘가2', '원숭이가많음', DEFAULT, NULL, 4);
    else
    select '관리자가 아닙니다';
    END IF;

-- 관리자 권한 확인 후 운동장소 (수정)
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
