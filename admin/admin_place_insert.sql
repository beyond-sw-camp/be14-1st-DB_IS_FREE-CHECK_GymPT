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