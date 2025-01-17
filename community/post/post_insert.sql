-- 사용자가 게시글 작성시 받은 데이터를 db에 저장
-- 여기서 post_id는 auto_increment
-- 이 구문들로 생성된 게시물들은 1부터 시작하니깐 밑에서 수정할때 게시물 조회는 post_id = 1로
INSERT INTO community_post (post_title, post_content, post_created_at, post_is_blinded, user_id)
VALUES ('첫번째 게실 작성제목', '첫번째 게시글 작성내용', NOW(), FALSE, 1);