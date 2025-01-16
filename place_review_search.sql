-- 운동 장소 리뷰 검색

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