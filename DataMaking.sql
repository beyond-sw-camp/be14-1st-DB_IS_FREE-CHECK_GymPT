-- 더미 데이터 만들어서 삽입

/*
CREATE TABLE user  (
	user_id       INT           NOT NULL AUTO_INCREMENT,
    user_email    VARCHAR(50)   NOT NULL,
    user_pw       VARCHAR(20)   NOT NULL,
    user_phone    VARCHAR(20)   NOT NULL,
    user_name     VARCHAR(20)   NOT NULL,
    user_gender   CHAR(1)       NOT NULL,
    user_address  VARCHAR(20)   NOT NULL,
    user_image    VARCHAR(1000) NOT NULL,
    user_nickname VARCHAR(20)   NOT NULL,
    user_height   DECIMAL(5, 2) NOT NULL,
    user_weight   DECIMAL(5, 2) NOT NULL,
    user_join     DATE          NOT NULL,
    user_leave    DATE          NULL,
    user_report   TINYINT       NOT NULL DEFAULT 0,
    user_grant    CHAR(1)       NOT NULL,
    PRIMARY KEY (user_id)
);
*/
INSERT
	 	 INTO user
	 values
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
	 );
-- ----------------------------------------
/*
CREATE TABLE studio (
	 studio_id      INT            NOT NULL AUTO_INCREMENT,
    studio_name    VARCHAR(255)   NOT NULL,
    studio_address TEXT(1000)     NOT NULL,
    studio_des     TEXT(9000)     NOT NULL,
    studio_price   DECIMAL(10, 2) NOT NULL,
    created_at     DATETIME       NOT NULL,
    updated_at     DATETIME       NULL,
    PRIMARY KEY (studio_id)
);
*/
INSERT
		 INTO studio
	 values
	 (
	 1,
	 '도비스튜디오',
	 '서울시 신대방삼거리역',
	 '양말을 무료로 주는 합리적인 스튜디오!',
	 100000,
	 '2025-01-16 11:46:00',
	 NULL
	 ),(
	 2,
	 '14기 스튜디오',
	 '서울시 신대방삼거리역',
	 '화장실이 겨우 한개입니다...!!',
	 0,
	 '2024-12-30 12:00:00',
	 null
	 );
-- ----------------------------------------
/*
CREATE TABLE studio_booking (
	 booking_id   INT      NOT NULL AUTO_INCREMENT,
    booking_date DATE     NOT NULL,
    start_time   DATETIME NOT NULL,
    end_time     DATETIME NOT NULL,
    user_id      INT      NOT NULL,
    studio_id    INT      NOT NULL,
    PRIMARY KEY (booking_id),
    FOREIGN KEY (user_id) REFERENCES user (user_id),
    FOREIGN KEY (studio_id) REFERENCES studio (studio_id)
); */
INSERT
		 INTO studio_booking
	 VALUES
	 (
	 NULL,
	 '2025-02-06',
	 '2025-02-07 14:00:00',
	 '2025-02-07 16:00:00',
	 1, -- user_id auto_increment가 어떤 형식인지 아직 모름
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
/*
CREATE TABLE sticker (
	 sticker_id    INT          NOT NULL,
    sticker_size  VARCHAR(255) NOT NULL,
    sticker_color VARCHAR(255) NOT NULL,
    PRIMARY KEY (sticker_id)
);
*/
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
/* 
CREATE TABLE diary (
	 diary_id     INT          NOT NULL AUTO_INCREMENT,
    date         DATE         NOT NULL,
    title        VARCHAR(255) NOT NULL,
    task         VARCHAR(255) NOT NULL,
    is_completed VARCHAR(255) NOT NULL,
    color        VARCHAR(255) NOT NULL,
    user_id      INT          NOT NULL,
    sticker_id   INT          NULL,
    PRIMARY KEY (diary_id),
    FOREIGN KEY (user_id) REFERENCES user (user_id),
    FOREIGN KEY (sticker_id) REFERENCES sticker (sticker_id)
);
*/
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
	 'Done',
	 'green',
	 1,
	 NULL
	 ),(
	 NULL,
	 '2025-01-01',
	 '새해 인사',
	 '새해복 많이 받으세요~',
	 'Done',
	 'yellow',
	 2,
	 null
	 );