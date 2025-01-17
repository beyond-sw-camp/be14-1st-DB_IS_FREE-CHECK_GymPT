-- 신고 처리에 따른 관리자의 스튜디오 리뷰 삭제

SET FOREIGN_KEY_CHECKS = 0; -- 외래키 참조 해제

IF ((SELECT user_grant -- 관리자 권한 체크
     FROM user
     WHERE user_id = 4) = 'Y') THEN
    DELETE
    FROM studio_review
    WHERE review_id IN (SELECT review_id2 -- 신고 처리된 글 선택
                        FROM report
                        WHERE report_YN = 1);
ELSE
    SELECT '관리자가 아닙니다';
END IF;

SET FOREIGN_KEY_CHECKS = 1; -- 외래키 참조 설정 복원