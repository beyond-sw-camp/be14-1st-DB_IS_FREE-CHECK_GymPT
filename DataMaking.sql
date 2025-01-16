-- 더미 데이터 만들어서 삽입
-- 주석 전부 삭제
INSERT
	 	 INTO user
	 VALUES
	 (
	 NULL,
	 'tjalswhd1@naver.com',
	 '12345',
	 '010-2643-7581',
	 '서민종',
	 'M',
	 '서울시 중랑구 면목동',
	 'URL/123456',
	 'MJay1',
	 168,
	 71,
	 '2024-07-01',
	 NULL,
	 0,
	 'N'
	 ),(
	 NULL,
	 'kimjeongeun@gmail.com',
	 '88888',
	 '010-8888-8888',
	 '김정은',
	 'M',
	 '조선민주주의인민공화국 평양 직할시',
	 'URL/atomicbomb',
	 'AtomicBombLove',
	 165,
	 95,
	 '2025-01-01',
	 NULL,
	 10,
	 'N'
	 ),(
	 NULL,
	 'pigeon@naver.com',
	 '99999',
	 '010-9999-9999',
	 '비둘기',
	 'F',
	 '포마토 골목 안',
	 'URL/pigeon/999',
	 'Pigeon',
	 20,
	 2,
	 '2025-01-16',
	 NULL,
	 3,
	 'N'
	 ),(
	 NULL,
	 'president@gmail.com',
	 '12345',
	 '010-1234-5678',
	 '윤석열',
	 'M',
	 '서울특별시 청와대',
	 'url/president',
	 'GyeUm',
	 175,
	 90,
	 '2001-01-01',
	 '2025-01-15',
	 100,
	 'N'
	 );
-- ----------------------------------------
INSERT
		 INTO studio
	 values
	 (
	 1,
	 '도비스튜디오',
	 '서울시 신대방삼거리역',
	 '양말을 무료로 주는 합리적인 스튜디오!',
	 100000,
	 '2025-01-16',
	 NULL
	 ),(
	 2,
	 '14기 스튜디오',
	 '서울시 신대방삼거리역',
	 '화장실이 겨우 한개입니다...!!',
	 0,
	 '2024-12-30',
	 null
	 );
-- ----------------------------------------
INSERT
		 INTO studio_booking
	 VALUES
	 (
	 NULL,
	 '2025-02-06',
	 '2025-02-07 14:00:00',
	 '2025-02-07 16:00:00',
	 1,
	 1
	 ),(
	 NULL,
	 '2025-05-01',
	 '2025-05-01 13:30:00',
	 '2025-05-01 15:00:00',
	 2,
	 2
	 );
-- ----------------------------------------
INSERT
		 into studio_review
	 values
	 (
	 NULL,
	 '친절한 서비스',
	 5,
	 '2025-01-16 14:20:00',
	 NULL,
	 FALSE,
	 1,
	 1
	 ),(
	 NULL,
	 '여긴 별로에요',
	 3,
	 '2025-01-15 13:00:00',
	 NULL,
	 FALSE,
	 2,
	 2
	 );
-- ----------------------------------------
INSERT
		 INTO sticker
	 values
	 (
	 NULL,
	 'big',
	 'red'
	 ),(
	 NULL,
	 'medium',
	 'yellow'
	 ),(
	 NULL,
	 'small',
	 'green'
	 );
-- ----------------------------------------
INSERT
		 INTO diary
	 values
	 (
	 NULL,
	 '2025-01-16',
	 '어제의 점심은?',
	 '감자탕 해장~',
	 'Done',
	 'red',
	 1,
	 1
	 ),
	 (NULL,
	 '2024-12-25',
	 '즐거운 크리스마스~',
	 '슬프지만 여친이 없다!',
	 'InProgress',
	 'green',
	 1,
	 NULL
	 ),(
	 NULL,
	 '2025-01-01',
	 '새해 인사',
	 '새해복 많이 받으세요~',
	 'NotYet',
	 'yellow',
	 2,
	 null
	 );
-- ----------------------------------------
INSERT
		 INTO wPlace
	 values
	 (
	 NULL,
	 '파워헬스장',
	 '서울시 강남구 역삼동',
	 '깔끔한 인테리어, 친절한 강사',
	 '2023-09-24',
	 NULL,
	 1
	 ),(
	 NULL,
	 '하늘공원',
	 '서울특별시',
	 '넓은 공원 좋은 산책길',
	 '2020-05-05',
	 NULL,
	 1
	 );
-- ----------------------------------------
INSERT
		 INTO place_review
	 values
	 (
	 NULL,
	 '별로에요',
	 '직원이 불친절해요',
	 2,
	 '25-01-13',
	 NULL,
	 FALSE,
	 1,
	 1
	 ),(
	 NULL,
	 '좋습니다!',
	 4,
	 '25-01-01',
	 '25-01-03',
	 FALSE,
	 2,
	 2
	 );
-- ----------------------------------------
INSERT
		 INTO wInfo
	 values
	 (
	 NULL,
	 '런닝',
	 '열심히 뛰세요!',
	 5
	 ),(
	 NULL,
	 '복싱',
	 '가드는 생명',
	 5
	 ),(
	 NULL,
	 '헬스',
	 '봉 무게는 조상님이 들어주나?',
	 4
	 );
-- ----------------------------------------
INSERT
		 INTO wRecord
	 values
	 (
	 NULL,
	 '2025-01-16',
	 '01:00:00',
	 150,
	 '00:06:30',
	 '14:00:00',
	 9,
	 1,
	 1,
	 2
	 ),(
	 NULL,
	 '2025-01-15',
	 '01:30:00',
	 120,
	 '00:05:00',
	 '17:00:00',
	 7,
	 2,
	 2,
	 1
	 );
-- ----------------------------------------
INSERT
		 INTO product
	 values
	 (
	 NULL,
	 '런닝화',
	 '신고 뛸 수 있는 신발',
	 'url/runningshoes',
	 '2025-01-16',
	 null
	 ),(
	 NULL,
	 '아령',
	 '무거운 물건',
	 'url/exerciseTool',
	 '2025-01-01',
	 null
	 ),(
	 NULL,
	 '줄넘기',
	 '줄이 정말 정말 길군요!',
	 'url/jumpingrope',
	 '2024-11-11',
	 null
	 );
-- ----------------------------------------
INSERT
		 INTO blacklist_level
	 values
	 (
	 1,
	 '일주일 게시글, 댓글 제한',
	 '0000-00-07',
	 ),(
	 2,
	 '일주일 접속 제한',
	 '0000-00-07'
	 ),(
	 3,
	 '한달 접속 제한',
	 '0000-01-00'
	 ),(
	 4,
	 '영구 탈퇴',
	 '3000-00-00'
	 );
-- ----------------------------------------
INSERT
		 INTO blacklist
	 values
	 (
	 4,
	 '25-01-15',
	 '26-01-15',
	 100,
	 4
	 );
-- ----------------------------------------
INSERT
		 INTO community_post
	 values
	 (
	 null,
	 '행복한 하루',
	 '모두 행복해져요',
	 '25-01-16 14:45:00',
	 NULL,
	 FALSE,
	 1
	 ),(
	 NULL,
	 '집가고싶다',
	 '집이 너무 멀어요',
	 '25-01-03 14:00:00',
	 NULL,
	 FALSE,
	 2
	 );
-- ----------------------------------------
INSERT
		 INTO comment
	 values
	 (
	 NULL,
	 '좋은 의견입니다',
	 '2025-01-16 15:00:00',
	 NULL,
	 'Atom',
	 1,
	 2
	 ),(
	 NULL,
	 '안녕하세요',
	 '2025-01-14 13:00:00',
	 NULL,
	 'MJay1',
	 2,
	 1
	 );
-- ----------------------------------------
INSERT
		 INTO report
	 values
	 (
	 NULL,
	 1,
	 '심심해서요(인성...)',
	 FALSE,
	 1,
	 1,
	 1,
	 NULL,
	 NULL,
	 NULL
	 ),(
	 NULL,
	 2,
	 '너무 무서운 글이에요',
	 FALSE,
	 2,
	 2,
	 2,
	 NULL,
	 1,
	 NULL,
	 NULL
	 );
-- ----------------------------------------