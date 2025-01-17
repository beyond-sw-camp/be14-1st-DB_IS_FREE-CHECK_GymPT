-- 운동 장소 리뷰 조회
SELECT
		 review_title,
		 review_content,
		 review_rating,
		 case
		 when review_updated_at IS NULL then review_created_at
		 ELSE review_updated_at
		 END AS time
  FROM place_review
  WHERE review_title LIKE '%별로%'
  AND review_is_blinded = FALSE
  ORDER BY review_created_at DESC;
 
-- 운동 장소 리뷰 조회
SELECT
		 review_title,
		 review_content,
		 review_rating,
		 case
		 when review_updated_at IS NULL then review_created_at
		 ELSE review_updated_at
		 END AS TIME
  FROM place_review
  WHERE review_is_blinded = FALSE
  ORDER BY review_created_at DESC;


-- 운동 장소 리뷰 개별 조회 (hancoal 수정)
SELECT
    review_title,
    review_content,
    review_rating,
    case
        when review_updated_at IS NULL then review_created_at
        ELSE review_updated_at
        END AS TIME
FROM place_review
WHERE review_is_blinded = FALSE AND review_id = 1 -- 개별조회기능$$$목록조회와 별개로 개별조회
ORDER BY review_created_at DESC;
