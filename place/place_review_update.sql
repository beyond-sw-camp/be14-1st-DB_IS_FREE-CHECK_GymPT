UPDATE place_review
SET review_title      = '집에서 가까워서 좋아요'
  , review_content    = '집에서 단 10분 거리!'
  , review_rating     = 5
  , review_updated_at = CURTIME()
WHERE review_id = 1;