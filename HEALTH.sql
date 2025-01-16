/* DROP TABLE if EXISTS user CASCADE;
DROP TABLE if EXISTS studio_booking CASCADE;
DROP TABLE if EXISTS product CASCADE;
DROP TABLE if EXISTS studio CASCADE;
DROP TABLE if EXISTS wPlace CASCADE;
DROP TABLE if EXISTS place_review CASCADE;
DROP TABLE if EXISTS studio_review CASCADE;
DROP TABLE if EXISTS diary CASCADE;
DROP TABLE if EXISTS comment CASCADE;
DROP TABLE if EXISTS sticker CASCADE;
DROP TABLE if EXISTS wRecord CASCADE;
DROP TABLE if EXISTS community_post CASCADE;
DROP TABLE if EXISTS post_like CASCADE;
DROP TABLE if EXISTS wInfo CASCADE;
DROP TABLE if EXISTS post_bookmark CASCADE;
DROP TABLE if EXISTS workout_prod CASCADE;
DROP TABLE if EXISTS blacklist_level CASCADE;
DROP TABLE if EXISTS blacklist CASCADE;
DROP TABLE if EXISTS report CASCADE; */


CREATE TABLE user  (
	user_id	INT NOT NULL AUTO_INCREMENT ,
	user_email VARCHAR(50) NOT NULL,
	user_pw	VARCHAR(20)	NOT NULL,
	user_phone	VARCHAR(20)	NOT NULL,
	user_name	VARCHAR(20)	NOT NULL,
	user_gender	CHAR(1)	NOT NULL,
	user_address	VARCHAR(20)	NOT NULL,
	user_image	VARCHAR(1000)	NOT NULL,
	user_nickname	VARCHAR(20)	NOT NULL,
	user_height	DECIMAL(5,2)	NOT NULL,
	user_weight	DECIMAL(5,2)	NOT NULL,
	user_join	DATE	NOT NULL,
	user_leave	DATE	NULL,
	user_report	TINYINT	NOT NULL,
	user_grant	CHAR(1)	NOT NULL,
	PRIMARY KEY (user_id)
);

CREATE TABLE studio_booking (
	booking_id	INT 		NOT NULL AUTO_INCREMENT ,
	booking_date	DATE	NOT NULL,
	start_time	DATETIME	NOT NULL,
	end_time	DATETIME	NOT NULL,
	user_id	INT	NOT NULL,
	studio_id	INT	NOT NULL,
	PRIMARY KEY (booking_id)
);

CREATE TABLE product (
	product_id	INT	NOT NULL ,
	product_name	VARCHAR(100)	NOT NULL,
	product_desc	TEXT(3000)	NOT NULL,
	product_url	VARCHAR(255)	NOT NULL,
	product_created_at	DATETIME	NOT NULL,
	product_updated_at	DATETIME	NULL,
	PRIMARY KEY (product_id)
);

CREATE TABLE studio (
	studio_id	INT	NOT NULL AUTO_INCREMENT ,
	studio_name	VARCHAR(255)	NOT NULL,
	studio_address	TEXT(1000)	NOT NULL,
	studio_des	TEXT(9000)	NOT NULL,
	studio_price	DECIMAL(10, 2)	NOT NULL,
	created_at	DATETIME	NOT NULL,
	updated_at	DATETIME	NULL,
	PRIMARY KEY (studio_id)
);

CREATE TABLE wPlace (
	wplace_id	INT	NOT NULL AUTO_INCREMENT ,
	wplace_name	VARCHAR(100)	NOT NULL,
	wpalce_adress	VARCHAR(255)	NOT NULL,
	wplace_des	TEXT(3000)	NOT NULL,
	wcreate_at	DATETIME	NOT NULL,
	wupdate_at	DATETIME	NULL,
	wplace_request	DATETIME	NOT NULL,
	user_id	INT	NOT NULL,
	PRIMARY KEY (wplace_id)
);

CREATE TABLE place_review (
	review_id	INT	NOT NULL	AUTO_INCREMENT COMMENT '리뷰 ID',
	review_title	VARCHAR(100)	NOT NULL	COMMENT '- 리뷰 제목',
	review_content	TEXT(3000)	NOT NULL	COMMENT '- 리뷰 내용',
	review_rating	INT	NOT NULL	COMMENT '- 리뷰 별점 (1~5 사이의 값)',
	review_created_at	DATETIME	NOT NULL		COMMENT '- 리뷰 작성 시간',
	review_updated_at	DATETIME	NULL	COMMENT '- 리뷰 수정 시간',
	review_is_blinded	BOOLEAN	NOT NULL	DEFAULT FALSE	COMMENT '- 리뷰 수정 시간',
	wplace_id	INT	NOT NULL,
	user_id	INT	NOT NULL,
	PRIMARY KEY (review_id)
);

CREATE TABLE studio_review (
	review_id	INT	NOT NULL AUTO_INCREMENT ,
	review_content	TEXT(9000)	NOT NULL,
	review_rating	INT	NOT NULL,
	review_created_at	DATETIME	NOT NULL,
	review_updated_at	DATETIME	NULL,
	review_is_blinded	BOOLEAN	NOT NULL,
	user_id	INT	NOT NULL,
	studio_id	INT	NOT NULL,
	PRIMARY KEY (review_id)
);

CREATE TABLE diary (
	diary_id	INT	NOT NULL AUTO_INCREMENT ,
	date	DATE	NOT NULL,
	title	VARCHAR(255)	NOT NULL,
	task	VARCHAR(255)	NOT NULL,
	is_completed	VARCHAR(255)	NOT NULL,
	color	VARCHAR(255)	NOT NULL,
	user_id	INT	NOT NULL,
	sticker_id	INT	NOT NULL,
	PRIMARY KEY (diary_id)
);

CREATE TABLE comment (
	comment_id	INT	NOT NULL AUTO_INCREMENT ,
	comment_title	VARCHAR(300)	NOT NULL,
	comment_create_at	DATETIME	NOT NULL,
	comment_delete_at	DATETIME	NULL,
	user_nickname	VARCHAR(50)	NOT NULL,
	comment_is_blinded	BOOLEAN	NOT NULL,
	user_id	INT	NOT NULL,
	post_id	INT	NOT NULL,
	comment_id2	INT	NOT NULL,
	PRIMARY KEY (comment_id)
);

CREATE TABLE sticker (
	sticker_id	INT	NOT NULL ,
	sticker_size	VARCHAR(255)	NOT NULL,
	sticker_color	VARCHAR(255)	NOT NULL,
	PRIMARY KEY (sticker_id)
);

CREATE TABLE wRecord (
	wrecord_id	INT	NOT NULL AUTO_INCREMENT ,
	wrecord_date	DATE	NOT NULL,
	wrecord_min	TIME	NOT NULL,
	wrecord_cal	INT	NOT NULL,
	average_pace	TIME	NOT NULL,
	wrecord_at	TIME	NOT NULL,
	wrecord_intensity	INT	NOT NULL,
	user_id	INT	NOT NULL,
	workout_id	INT	NOT NULL,
	wplace_id	INT	NOT NULL,
	PRIMARY KEY (wrecord_id)
);

CREATE TABLE community_post (
	post_id	INT	NOT NULL AUTO_INCREMENT ,
	post_title	VARCHAR(100)	NOT NULL,
	post_content	VARCHAR(6000)	NOT NULL,
	post_created_at	DATETIME	NOT NULL,
	post_updated_at	DATETIME	NULL,
	post_is_blinded	BOOLEAN	NOT NULL,
	user_id	INT	NOT NULL,
	PRIMARY KEY (post_id)
);

CREATE TABLE post_like (
	post_id	INT	NOT NULL,
	user_id	INT	NOT NULL
);

CREATE TABLE wInfo (
	winfo_id	INT	NOT NULL AUTO_INCREMENT,
	winfo_name	VARCHAR(100)	NOT NULL,
	winfo_rule	TEXT(9000)	NOT NULL,
	winfo_intensity	INT	NOT NULL,
	PRIMARY KEY (winfo_id)
);

CREATE TABLE post_bookmark (
	user_id	INT	NOT NULL,
	post_id	INT	NOT NULL
);

CREATE TABLE workout_prod (
	workout_id	INT	NOT NULL,
	product_id	INT	NOT NULL
);

CREATE TABLE blacklist_level (	
	level	INT	NOT NULL ,
	auth	VARCHAR(20)	NOT NULL,
	period	DATETIME	NOT NULL,
	PRIMARY KEY (level)
);

CREATE TABLE blacklist (
	user_id	INT	NOT NULL,
	start_date	DATE	NOT NULL,
	end_date	DATE	NOT NULL,
	Field	TINYINT	NOT NULL,
	level	INT	NOT NULL
);

CREATE TABLE report (
	report_id	INT	NOT NULL AUTO_INCREMENT ,
	user_id	INT	NOT NULL,
	report_reason	VARCHAR(9000)	NOT NULL,
	report_YN	BOOLEAN	NOT NULL,
	reported_id	INT	NOT NULL,
	report_category	INT	NOT NULL,
	post_id	INT	NULL,
	comment_id	INT	NULL,
	review_id	INT	NULL	COMMENT '리뷰 ID',
	review_id2	INT	NULL,
	PRIMARY KEY (report_id)
	FOREIGN KEY (review_id)
	REFERENCES 
);

/* ALTER TABLE USER  ADD CONSTRAINT PK_USER PRIMARY KEY (
	user_id 
); */

/*
ALTER TABLE studio_booking ADD CONSTRAINT PK_STUDIO_BOOKING PRIMARY KEY (
	booking_id
);

ALTER TABLE product ADD CONSTRAINT PK_PRODUCT PRIMARY KEY (
	product_id
);

ALTER TABLE studio ADD CONSTRAINT PK_STUDIO PRIMARY KEY (
	studio_id
);

ALTER TABLE wPlace ADD CONSTRAINT PK_WPLACE PRIMARY KEY (
	wplace_id
);

ALTER TABLE place_review ADD CONSTRAINT PK_PLACE_REVIEW PRIMARY KEY (
	review_id
);

ALTER TABLE studio_review ADD CONSTRAINT PK_STUDIO_REVIEW PRIMARY KEY (
	review_id
);

ALTER TABLE diary ADD CONSTRAINT PK_DIARY PRIMARY KEY (
	diary_id
);

ALTER TABLE comment ADD CONSTRAINT PK_COMMENT PRIMARY KEY (
	comment_id
);

ALTER TABLE sticker ADD CONSTRAINT PK_STICKER PRIMARY KEY (
	sticker_id
);

ALTER TABLE wRecord ADD CONSTRAINT PK_WRECORD PRIMARY KEY (
	wrecord_id
);

ALTER TABLE community_post ADD CONSTRAINT PK_COMMUNITY_POST PRIMARY KEY (
	post_id
);

ALTER TABLE post_like ADD CONSTRAINT PK_POST_LIKE PRIMARY KEY (
	post_id,
	user_id
);

ALTER TABLE wInfo ADD CONSTRAINT PK_WINFO PRIMARY KEY (
	winfo_id
);

ALTER TABLE post_bookmark ADD CONSTRAINT PK_POST_BOOKMARK PRIMARY KEY (
	user_id,
	post_id
);

ALTER TABLE workout_prod ADD CONSTRAINT PK_WORKOUT_PROD PRIMARY KEY (
	workout_id,
	product_id
);

ALTER TABLE blacklist_level ADD CONSTRAINT PK_BLACKLIST_LEVEL PRIMARY KEY (
	level
);

ALTER TABLE blacklist ADD CONSTRAINT PK_BLACKLIST PRIMARY KEY (
	user_id
);

ALTER TABLE report ADD CONSTRAINT PK_REPORT PRIMARY KEY (
	report_id
);

ALTER TABLE post_like ADD CONSTRAINT FK_community_post_TO_post_like_1 FOREIGN KEY (
	post_id
)
REFERENCES community_post (
	post_id
);

ALTER TABLE post_like ADD CONSTRAINT FK_user_TO_post_like_1 FOREIGN KEY (
	user_id
)
REFERENCES user (
	user_id
);

ALTER TABLE post_bookmark ADD CONSTRAINT FK_user_TO_post_bookmark_1 FOREIGN KEY (
	user_id
)
REFERENCES user (
	user_id
);

ALTER TABLE post_bookmark ADD CONSTRAINT FK_community_post_TO_post_bookmark_1 FOREIGN KEY (
	post_id
)
REFERENCES community_post (
	post_id
);

ALTER TABLE workout_prod ADD CONSTRAINT FK_wInfo_TO_workout_prod_1 FOREIGN KEY (
	workout_id
)
REFERENCES wInfo (
	winfo_id
);

ALTER TABLE workout_prod ADD CONSTRAINT FK_product_TO_workout_prod_1 FOREIGN KEY (
	product_id
)
REFERENCES product (
	product_id
);
healthdb
ALTER TABLE blacklist ADD CONSTRAINT FK_user_TO_blacklist_1 FOREIGN KEY (
	user_id
)
REFERENCES user (
	user_id
);
*/
