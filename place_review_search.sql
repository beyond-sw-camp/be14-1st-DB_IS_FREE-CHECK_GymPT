-- 운동 장소 리뷰 조회
SELECT
		 review_title,
		 review_content,
		 review_rating,
		 review_created_at,
		 review_updated_at,
		 review_is_blinded,
		 wplace_id,
		 user_id
  FROM place_review
 WHERE review_title LIKE '%별로%';
 
-- 운동 장소 리뷰 조회
SELECT
		 review_title,
		 review_content,
		 review_rating,
		 review_created_at,
		 review_updated_at,
		 review_is_blinded,
		 wplace_id,
		 user_id
  FROM place_review
  ORDER BY review_created_at DESC;