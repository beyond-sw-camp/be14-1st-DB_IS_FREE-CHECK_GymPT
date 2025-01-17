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