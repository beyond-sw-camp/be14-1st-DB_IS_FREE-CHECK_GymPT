-- 데이터 입력/삭제 확인용 주석처리
SELECT *
FROM studio;

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
-- WHERE 조건문 통해 중복방지



-- 관리자 스튜디오 정보 수정 기능
UPDATE studio
SET studio_name    = '포마토',
    studio_address = '피자 라지 한판',
    studio_des     = '우리팀원은 한번에 피자 한판을 먹을수있어요',
    studio_price   = 27000,
    updated_at     = now()
WHERE studio_id = 3;

-- 관리자 스튜디오 정보 삭제 기능
DELETE
FROM studio
WHERE studio_id = 100;
