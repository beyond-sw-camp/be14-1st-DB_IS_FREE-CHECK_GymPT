-- 사용자 스튜디오 정보 조회 기능
SELECT studio_name,
       studio_address,
       studio_des,
       studio_price,
       CASE
           WHEN updated_at IS NULL THEN created_at
           ELSE updated_at
           END AS TIME
-- 등록시간 수정시간에 따라 TIME이라는 이름으로 수정되면 수정시간, 없으면 등록시간 출력
FROM studio
ORDER BY created_at DESC;
-- 등록 시간 기준 최신순으로 조회시켜줌.

-- 사용자 키워드 입력에 따른 조회 기능
SELECT studio_name,
       studio_address,
       studio_des,
       studio_price,
       CASE
           WHEN updated_at IS NULL THEN created_at
           ELSE updated_at
           END AS TIME
FROM studio
WHERE studio_name LIKE '%스튜%'
ORDER BY created_at DESC;
-- 키워드 입력 조건