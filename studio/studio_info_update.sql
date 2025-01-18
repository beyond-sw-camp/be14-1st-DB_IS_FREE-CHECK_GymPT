-- 관리자 스튜디오 정보 수정 기능

UPDATE studio
	 SET studio_name = '포마토 스튜디오',
	 	  studio_address = '서울특별시',
	 	  studio_des = '테스트 설명',
	 	  studio_price = 300000,
	 	  updated_at = CURRENT_DATE
  WHERE studio_id = 3;