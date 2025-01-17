-- 관리자 스튜디오 정보 등록 기능
INSERT INTO studio (studio_id, studio_name, studio_address,
                    studio_des, studio_price, created_at, updated_at)
SELECT 100,
    '포마토 스튜디오',
    '서울시 동작구 어쩌구',
    '이 스튜디오 앞에는 비둘기가 많이 삽니다..',
    3500,
    now(),
    null
WHERE NOT EXISTS (SELECT 1
                  FROM studio
                  WHERE studio_id = 100);