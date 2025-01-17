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
-- 커뮤니티 댓글 등록
INSERT
		 INTO comment
	 values
	 (
	 NULL,
	 '등록 기능 테스트',
	 DEFAULT,
	 NULL,
	 DEFAULT,
	 1,
	 2,
	 NULL);

-- 커뮤니티 댓글 수정
UPDATE comment
	SET comment_title = '수정 기능 테스트',
		 comment_updated_at = CURRENT_DATE
 WHERE comment_id = 3;
 
-- 커뮤니티 댓글 삭제
DELETE
  FROM comment
 WHERE comment_id = 2;