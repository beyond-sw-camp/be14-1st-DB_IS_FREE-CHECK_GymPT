-- 테스트 케이스시 사용할 관리자 권한을 가진 유저는 user_id 5(한석현)
-- 운동장소 등록 /관리자만
INSERT INTO wPlace (wplace_name, wplace_address, wplace_des, user_id)
SELECT '동작 헬스장1', '서울특별시 보라매롱', '어딘가', 1
FROM user
WHERE user_id = 5 AND user_grant = 'Y';

-- 운동 장소 정보 수정 /관리자만
UPDATE wPlace
    SET wplace_name = '동작 국립 헬스장',
              wplace_address = '서울특별시 보라매로 87',
              wplace_des = '기구가 친절하고 관장님이 좋네요'
       WHERE wplace_id = 3
         AND EXISTS (
           SELECT 1
           FROM user
           WHERE user_id = 5 AND user_grant = 'Y'
       );

-- 운동장소 삭제 / 관리자만
DELETE FROM wPlace
                  WHERE wplace_id = 3
        AND EXISTS (
    SELECT 1
    FROM user
    WHERE user_id = 5 AND user_grant = 'Y'
);
