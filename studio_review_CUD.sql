-- 스튜디오 리뷰 입력
INSERT
INTO studio_review
( review_content
, review_rating
, review_created_at
, review_is_blinded
, user_id
, studio_id)
VALUES ( '사장님이 친절하고 사진이 잘 나와요'
       , 5
       , DEFAULT
       , DEFAULT
       , 1
       , 1);

-- 스튜디오 리뷰 수정
UPDATE studio_review
SET review_content    = '생각해보니 아닌 것 같아요'
  , review_rating     = '3'
  , review_updated_at = CURDATE()
WHERE review_id = 3;

-- 스튜디오 리뷰 삭제
DELETE
FROM studio_review
WHERE review_id = 3;

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