-- 사용자가 게시글 작성시 받은 데이터를 db에 저장
-- 여기서 post_id는 auto_increment
-- 이 구문들로 생성된 게시물들은 1부터 시작하니깐 밑에서 수정할때 게시물 조회는 post_id = 1로
INSERT INTO community_post (post_title, post_content, post_created_at, post_is_blinded, user_id)
VALUES ('첫번째 게실 작성제목', '첫번째 게시글 작성내용', NOW(), FALSE, 1);

-- 사용자가 게시글 수정시 기존 데이터에 신규 데이터를 저장, 추가로 수정시간 생성
UPDATE community_post
SET post_title = '두번째 수정된 제목',
    post_content = '첫번째 수정된 내용',
    post_updated_at = NOW()
WHERE post_id = 1 AND user_id = 1;

-- 사용자가 게시글 삭제 시 기존 데이터 삭제하는 기능 추가.
SET FOREIGN_KEY_CHECKS = 0; -- 외래 키 제약 비활성화
DELETE FROM community_post
WHERE post_id = 1;
SET FOREIGN_KEY_CHECKS = 1; -- 외래 키 제약 다시 활성화

-- 관리자가 신고 처리에 의해 게시글을 삭제할수 있는 기능 추가
DELETE FROM community_post
WHERE post_id = 3
  AND EXISTS (
    SELECT 1 -- user_id 와 grant가 일치하는 지 확인
    FROM user
    WHERE user_id = 1 AND user_grant = 'Y'
);