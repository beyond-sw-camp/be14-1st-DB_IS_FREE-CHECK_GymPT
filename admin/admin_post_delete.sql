-- 관리자가 신고 처리에 의해 게시글을 삭제할수 있는 기능 추가
DELETE FROM community_post
WHERE post_id = 3
  AND EXISTS (
    SELECT 1 -- user_id 와 grant가 일치하는 지 확인
    FROM user
    WHERE user_id = 1 AND user_grant = 'Y'
);