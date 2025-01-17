-- 스튜디오 리뷰 수정
UPDATE studio_review
SET review_content    = '생각해보니 아닌 것 같아요'
  , review_rating     = '3'
  , review_updated_at = CURDATE()
WHERE review_id = 3;