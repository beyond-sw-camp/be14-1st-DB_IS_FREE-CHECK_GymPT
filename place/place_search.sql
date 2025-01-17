-- 운동 장소 목록 조회
SELECT
	 wplace_name,
	 wplace_address,
	 wplace_des,
	 CASE
           WHEN wupdate_at IS NULL THEN wcreate_at
           ELSE wupdate_at
           END AS time
		 FROM wPlace;

-- 운동 장소 정보 키워드 검색
SELECT
	 wplace_name,
	 wplace_address,
	 wplace_des,
	 CASE
           WHEN wupdate_at IS NULL THEN wcreate_at
           ELSE wupdate_at
           END AS time
		 FROM wPlace
		 WHERE wplace_name LIKE '%파워%';