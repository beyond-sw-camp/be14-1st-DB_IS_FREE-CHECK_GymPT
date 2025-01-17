DROP TABLE IF EXISTS report CASCADE;
DROP TABLE IF EXISTS comment CASCADE;
DROP TABLE IF EXISTS post_like CASCADE;
DROP TABLE IF EXISTS post_bookmark CASCADE;
DROP TABLE IF EXISTS community_post CASCADE;
DROP TABLE IF EXISTS blacklist CASCADE;
DROP TABLE IF EXISTS blacklist_level CASCADE;
DROP TABLE IF EXISTS studio_booking CASCADE;
DROP TABLE IF EXISTS studio_review CASCADE;
DROP TABLE IF EXISTS studio CASCADE;
DROP TABLE IF EXISTS workout_prod CASCADE;
DROP TABLE IF EXISTS product CASCADE;
DROP TABLE IF EXISTS wRecord CASCADE;
DROP TABLE IF EXISTS wInfo CASCADE;
DROP TABLE IF EXISTS place_review CASCADE;
DROP TABLE IF EXISTS wPlace CASCADE;
DROP TABLE IF EXISTS diary CASCADE;
DROP TABLE IF EXISTS sticker CASCADE;
DROP TABLE IF EXISTS user CASCADE;

CREATE TABLE IF NOT EXISTS user
(
    user_id       INT           NOT NULL AUTO_INCREMENT COMMENT '회원 ID',
    user_email    VARCHAR(50)   NOT NULL UNIQUE COMMENT '회원 이메일' CHECK (user_email LIKE '%@%'),
    user_pw       VARCHAR(20)   NOT NULL COMMENT '회원 비밀번호',
    user_phone    VARCHAR(20)   NOT NULL UNIQUE COMMENT '회원 연락처',
    user_name     VARCHAR(20)   NOT NULL COMMENT '회원 이름',
    user_gender   CHAR(1)       NOT NULL COMMENT '회원 성별' CHECK (user_gender IN ('M', 'F')),
    user_address  VARCHAR(20)   NOT NULL COMMENT '회원 주소',
    user_image    VARCHAR(1000) NOT NULL COMMENT '회원 프로필 사진 URL',
    user_nickname VARCHAR(20)   NOT NULL COMMENT '회원 별명',
    user_height   DECIMAL(5, 2) NOT NULL COMMENT '회원 키',
    user_weight   DECIMAL(5, 2) NOT NULL COMMENT '회원 몸무게',
    user_join     DATE          NOT NULL DEFAULT (CURRENT_DATE) COMMENT '가입일자',
    user_leave    DATE          NULL COMMENT '탈퇴일자',
    user_report   TINYINT       NOT NULL DEFAULT 0 COMMENT '신고받은 횟수',
    user_grant    CHAR(1)       NOT NULL DEFAULT 'N' COMMENT '관리자 권한' CHECK (user_grant IN ('Y', 'N')),
    PRIMARY KEY (user_id)
) ENGINE = INNODB
  AUTO_INCREMENT = 1 COMMENT ='회원'
  DEFAULT CHARSET UTF8;

CREATE TABLE IF NOT EXISTS sticker
(
    sticker_id    INT          NOT NULL AUTO_INCREMENT,
    sticker_size  VARCHAR(255) NOT NULL,
    sticker_color VARCHAR(255) NOT NULL,
    PRIMARY KEY (sticker_id)
) ENGINE = INNODB
  AUTO_INCREMENT = 1 COMMENT ='다이어리 스티커'
  DEFAULT CHARSET UTF8;

CREATE TABLE IF NOT EXISTS diary
(
    diary_id     INT          NOT NULL AUTO_INCREMENT,
    date         DATE         NOT NULL DEFAULT (CURRENT_DATE),
    title        VARCHAR(255) NOT NULL,
    task         VARCHAR(255) NOT NULL,
    is_completed VARCHAR(255) NOT NULL CHECK (is_completed IN ('Done', 'InProgress', 'NotYet')),
    color        VARCHAR(255) NOT NULL,
    user_id      INT          NOT NULL,
    sticker_id   INT          NULL,
    PRIMARY KEY (diary_id),
    FOREIGN KEY (user_id) REFERENCES user (user_id),
    FOREIGN KEY (sticker_id) REFERENCES sticker (sticker_id)
) ENGINE = INNODB
  AUTO_INCREMENT = 1 COMMENT ='다이어리'
  DEFAULT CHARSET UTF8;

CREATE TABLE IF NOT EXISTS wPlace
(
    wplace_id      INT          NOT NULL AUTO_INCREMENT,
    wplace_name    VARCHAR(100) NOT NULL UNIQUE,
    wplace_address VARCHAR(255) NOT NULL UNIQUE,
    wplace_des     TEXT(3000)   NOT NULL COMMENT '장소 설명',
    wcreate_at     DATE         NOT NULL DEFAULT (CURRENT_DATE) COMMENT '장소 등록 일자',
    wupdate_at     DATE         NULL COMMENT '장소 수정 일자',
    user_id        INT          NOT NULL,
    PRIMARY KEY (wplace_id),
    FOREIGN KEY (user_id) REFERENCES user (user_id)
) ENGINE = INNODB
  AUTO_INCREMENT = 1 COMMENT ='운동 장소'
  DEFAULT CHARSET UTF8;

CREATE TABLE IF NOT EXISTS place_review
(
    review_id         INT          NOT NULL AUTO_INCREMENT COMMENT '리뷰 ID',
    review_title      VARCHAR(100) NOT NULL COMMENT '리뷰 제목',
    review_content    TEXT(3000)   NOT NULL COMMENT '리뷰 내용',
    review_rating     INT          NOT NULL COMMENT '리뷰 별점 (1~5 사이의 값)' CHECK (review_rating BETWEEN 1 AND 5),
    review_created_at DATETIME     NOT NULL DEFAULT (CURRENT_TIME) COMMENT '리뷰 작성 시간',
    review_updated_at DATETIME     NULL COMMENT '리뷰 수정 시간',
    review_is_blinded BOOLEAN      NOT NULL DEFAULT FALSE COMMENT '리뷰 블라인드 여부',
    wplace_id         INT          NOT NULL,
    user_id           INT          NOT NULL,
    PRIMARY KEY (review_id),
    FOREIGN KEY (wplace_id) REFERENCES wPlace (wplace_id),
    FOREIGN KEY (user_id) REFERENCES user (user_id)
) ENGINE = INNODB
  AUTO_INCREMENT = 1 COMMENT ='운동장소 리뷰'
  DEFAULT CHARSET UTF8;

CREATE TABLE IF NOT EXISTS wInfo
(
    winfo_id        INT          NOT NULL AUTO_INCREMENT,
    winfo_name      VARCHAR(100) NOT NULL COMMENT '운동 이름',
    winfo_rule      TEXT(9000)   NOT NULL COMMENT '운동 방법',
    winfo_intensity INT          NOT NULL COMMENT '운동 강도',
    PRIMARY KEY (winfo_id)
) ENGINE = INNODB
  AUTO_INCREMENT = 1 COMMENT ='운동 정보'
  DEFAULT CHARSET UTF8;

CREATE TABLE IF NOT EXISTS wRecord
(
    wrecord_id        INT  NOT NULL AUTO_INCREMENT,
    wrecord_date      DATE NOT NULL DEFAULT (CURRENT_DATE),
    wrecord_min       TIME NOT NULL COMMENT '운동 시간(분)',
    wrecord_cal       INT  NOT NULL COMMENT '소모 칼로리',
    average_pace      TIME NOT NULL,
    wrecord_at        TIME NOT NULL COMMENT '기록 시간',
    wrecord_intensity INT  NOT NULL,
    user_id           INT  NOT NULL,
    workout_id        INT  NOT NULL,
    wplace_id         INT  NOT NULL,
    PRIMARY KEY (wrecord_id),
    FOREIGN KEY (user_id) REFERENCES user (user_id),
    FOREIGN KEY (workout_id) REFERENCES wInfo (winfo_id),
    FOREIGN KEY (wplace_id) REFERENCES wPlace (wplace_id)
) ENGINE = INNODB
  AUTO_INCREMENT = 1 COMMENT ='운동 기록'
  DEFAULT CHARSET UTF8;

CREATE TABLE IF NOT EXISTS product
(
    product_id         INT          NOT NULL AUTO_INCREMENT,
    product_name       VARCHAR(100) NOT NULL,
    product_desc       TEXT(3000)   NOT NULL COMMENT '상품 설명',
    product_url        VARCHAR(255) NOT NULL,
    product_created_at DATE         NOT NULL DEFAULT (CURRENT_DATE),
    product_updated_at DATE         NULL,
    PRIMARY KEY (product_id)
) ENGINE = INNODB
  AUTO_INCREMENT = 1 COMMENT ='상품'
  DEFAULT CHARSET UTF8;

CREATE TABLE IF NOT EXISTS workout_prod
(
    workout_id INT NOT NULL,
    product_id INT NOT NULL,
    FOREIGN KEY (workout_id) REFERENCES wInfo (winfo_id),
    FOREIGN KEY (product_id) REFERENCES product (product_id)
) ENGINE = INNODB
  AUTO_INCREMENT = 1 COMMENT ='운동 별 상품'
  DEFAULT CHARSET UTF8;

CREATE TABLE IF NOT EXISTS studio
(
    studio_id      INT            NOT NULL AUTO_INCREMENT,
    studio_name    VARCHAR(255)   NOT NULL,
    studio_address TEXT(1000)     NOT NULL UNIQUE,
    studio_des     TEXT(9000)     NOT NULL COMMENT '스튜디오 설명',
    studio_price   DECIMAL(10, 2) NOT NULL,
    created_at     DATE           NOT NULL DEFAULT (CURRENT_DATE),
    updated_at     DATE           NULL,
    PRIMARY KEY (studio_id)
) ENGINE = INNODB
  AUTO_INCREMENT = 1 COMMENT ='스튜디오'
  DEFAULT CHARSET UTF8;

CREATE TABLE IF NOT EXISTS studio_review
(
    review_id         INT        NOT NULL AUTO_INCREMENT,
    review_content    TEXT(9000) NOT NULL,
    review_rating     INT        NOT NULL CHECK (review_rating BETWEEN 1 AND 5),
    review_created_at DATE       NOT NULL DEFAULT (CURRENT_DATE),
    review_updated_at DATE       NULL,
    review_is_blinded BOOLEAN    NOT NULL DEFAULT FALSE,
    user_id           INT        NOT NULL,
    studio_id         INT        NOT NULL,
    PRIMARY KEY (review_id),
    FOREIGN KEY (user_id) REFERENCES user (user_id),
    FOREIGN KEY (studio_id) REFERENCES studio (studio_id)
) ENGINE = INNODB
  AUTO_INCREMENT = 1 COMMENT ='스튜디오 리뷰'
  DEFAULT CHARSET UTF8;

CREATE TABLE IF NOT EXISTS studio_booking
(
    booking_id   INT      NOT NULL AUTO_INCREMENT,
    booking_date DATE     NOT NULL,
    start_time   DATETIME NOT NULL,
    end_time     DATETIME NOT NULL,
    user_id      INT      NOT NULL,
    studio_id    INT      NOT NULL,
    PRIMARY KEY (booking_id),
    FOREIGN KEY (user_id) REFERENCES user (user_id),
    FOREIGN KEY (studio_id) REFERENCES studio (studio_id)
) ENGINE = INNODB
  AUTO_INCREMENT = 1 COMMENT ='스튜디오 예약'
  DEFAULT CHARSET UTF8;

CREATE TABLE IF NOT EXISTS blacklist_level
(
    level   INT         NOT NULL AUTO_INCREMENT,
    auth    VARCHAR(20) NOT NULL,
    periods DATE        NOT NULL,
    PRIMARY KEY (level)
) ENGINE = INNODB
  AUTO_INCREMENT = 1 COMMENT ='블랙리스트 레벨'
  DEFAULT CHARSET UTF8;

CREATE TABLE IF NOT EXISTS blacklist
(
    user_id    INT     NOT NULL,
    start_date DATE    NOT NULL,
    end_date   DATE    NOT NULL,
    report_num TINYINT NOT NULL,
    level      INT     NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user (user_id),
    FOREIGN KEY (level) REFERENCES blacklist_level (level)
) ENGINE = INNODB
  AUTO_INCREMENT = 1 COMMENT ='블랙리스트'
  DEFAULT CHARSET UTF8;

CREATE TABLE IF NOT EXISTS community_post
(
    post_id         INT           NOT NULL AUTO_INCREMENT,
    post_title      VARCHAR(100)  NOT NULL,
    post_content    VARCHAR(6000) NOT NULL,
    post_created_at DATETIME      NOT NULL DEFAULT (CURRENT_TIME),
    post_updated_at DATETIME      NULL,
    post_is_blinded BOOLEAN       NOT NULL,
    user_id         INT           NOT NULL,
    PRIMARY KEY (post_id),
    FOREIGN KEY (user_id) REFERENCES user (user_id)
) ENGINE = INNODB
  AUTO_INCREMENT = 1 COMMENT ='커뮤니티 게시글'
  DEFAULT CHARSET UTF8;

-- SELECT * FROM comment;
CREATE TABLE IF NOT EXISTS comment
(
    comment_id         INT          NOT NULL AUTO_INCREMENT,
    comment_title      VARCHAR(300) NOT NULL,
    comment_created_at DATETIME     NOT NULL DEFAULT (CURRENT_TIME),
    comment_updated_at DATETIME     NULL,
    comment_is_blinded BOOLEAN      NOT NULL DEFAULT FALSE,
    user_id            INT          NOT NULL,
    post_id            INT          NOT NULL,
    comment_id2        INT          NULL,
    PRIMARY KEY (comment_id),
    FOREIGN KEY (user_id) REFERENCES user (user_id),
    FOREIGN KEY (post_id) REFERENCES community_post (post_id),
    FOREIGN KEY (comment_id2) REFERENCES comment (comment_id)
) ENGINE = INNODB
  AUTO_INCREMENT = 1 COMMENT ='댓글'
  DEFAULT CHARSET UTF8;

CREATE TABLE IF NOT EXISTS post_bookmark
(
    user_id INT NOT NULL,
    post_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user (user_id),
    FOREIGN KEY (post_id) REFERENCES community_post (post_id)
) ENGINE = INNODB
  AUTO_INCREMENT = 1 COMMENT ='게시글 북마크'
  DEFAULT CHARSET UTF8;

CREATE TABLE IF NOT EXISTS post_like
(
    post_id INT NOT NULL,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user (user_id),
    FOREIGN KEY (post_id) REFERENCES community_post (post_id)
) ENGINE = INNODB
  AUTO_INCREMENT = 1 COMMENT ='게시글 좋아요'
  DEFAULT CHARSET UTF8;

CREATE TABLE IF NOT EXISTS comment
(
    comment_id         INT          NOT NULL AUTO_INCREMENT,
    comment_title      VARCHAR(300) NOT NULL,
    comment_created_at DATETIME     NOT NULL DEFAULT (CURRENT_TIME),
    comment_updated_at DATETIME     NULL,
    comment_is_blinded BOOLEAN      NOT NULL DEFAULT FALSE,
    user_id            INT          NOT NULL,
    post_id            INT          NOT NULL,
    comment_id2        INT          NULL,
    PRIMARY KEY (comment_id),
    FOREIGN KEY (user_id) REFERENCES user (user_id),
    FOREIGN KEY (post_id) REFERENCES community_post (post_id),
    FOREIGN KEY (comment_id2) REFERENCES comment (comment_id)
) ENGINE = INNODB
  AUTO_INCREMENT = 1 COMMENT ='댓글'
  DEFAULT CHARSET UTF8;

CREATE TABLE IF NOT EXISTS report
(
    report_id       INT           NOT NULL AUTO_INCREMENT,
    user_id         INT           NOT NULL,
    report_reason   VARCHAR(9000) NOT NULL,
    report_YN       BOOLEAN       NOT NULL DEFAULT FALSE COMMENT '신고 처리 여부',
    reported_id     INT           NOT NULL COMMENT '신고당한 회원 ID',
    report_category INT           NOT NULL CHECK (report_category IN (1, 2, 3, 4)),
    post_id         INT           NULL,
    comment_id      INT           NULL,
    review_id       INT           NULL COMMENT '운동장소 리뷰 ID',
    review_id2      INT           NULL COMMENT '스튜디오 리뷰 ID',
    PRIMARY KEY (report_id),
    FOREIGN KEY (post_id) REFERENCES community_post (post_id),
    FOREIGN KEY (comment_id) REFERENCES comment (comment_id),
    FOREIGN KEY (review_id) REFERENCES place_review (review_id),
    FOREIGN KEY (review_id2) REFERENCES studio_review (review_id)
) ENGINE = INNODB
  AUTO_INCREMENT = 1 COMMENT ='신고 내역'
  DEFAULT CHARSET UTF8;