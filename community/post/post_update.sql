-- 사용자가 게시글 수정시 기존 데이터에 신규 데이터를 저장, 추가로 수정시간 생성
UPDATE community_post
SET post_title = '두번째 수정된 제목',
    post_content = '첫번째 수정된 내용',
    post_updated_at = NOW()
WHERE post_id = 1 AND user_id = 1;