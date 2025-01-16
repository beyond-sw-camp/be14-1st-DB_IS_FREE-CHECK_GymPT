-- SELECT * FROM comment;

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
		 comment_delete_at = CURRENT_DATE
 WHERE comment_id = 3;
 
-- 커뮤니티 댓글 삭제
DELETE
  FROM comment
 WHERE comment_id = 2;