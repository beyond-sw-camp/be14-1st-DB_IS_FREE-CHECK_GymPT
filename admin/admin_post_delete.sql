-- 관리자가 신고 처리에 의해 게시글을 삭제할수 있는 기능 추가
IF ((SELECT user_grant
     FROM user
     WHERE user_id = 5) = 'Y') THEN
          DELETE FROM community_post
          WHERE post_id = 3;
else
          select '관리자가 아닙니다.';
end if;
