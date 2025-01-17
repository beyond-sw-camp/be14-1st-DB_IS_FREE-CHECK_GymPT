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
ORDER BY studio_name;
-- 스튜디오 이름 기준으로 조회시켜줌.

-- 사용자 스튜디오 정보 개별 조회 기능(hancoal 수정)
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
WHERE studio_id = 1 -- 개별조회기능$$$목록조회와 별개로 개별조회
ORDER BY studio_name;
-- 스튜디오 이름 기준으로 조회시켜줌.

    
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
ORDER BY studio_name;
-- 키워드 입력 조건