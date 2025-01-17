-- 테스트 케이스시 사용할 관리자 권한을 가진 유저는 user_id 5(한석현)
-- 운동장소 등록 /관리자만
-- 관리자 권한 체크
IF ((SELECT user_grant
     FROM user
     WHERE user_id = 5) = 'Y') THEN
    INSERT INTO wplace (wplace_name, wplace_address, wplace_des, wcreate_at, wupdate_at, user_id)
    VALUES ('인천2헬스장', '인천 어딘가2', '원숭이가많음', DEFAULT, NULL, 4);
    else
    select '관리자가 아닙니다';
    END IF;

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
                  WHERE wplace_id = 4
        AND EXISTS (
    SELECT 1
    FROM user
    WHERE user_id = 5 AND user_grant = 'Y'
);
