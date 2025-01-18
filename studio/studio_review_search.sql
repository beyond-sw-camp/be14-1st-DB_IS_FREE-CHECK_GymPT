-- 스튜디오 리뷰 조회 (키워드 장소명)

SELECT s.studio_name,
       sr.review_content,
       sr.review_rating,
       CASE
           when sr.review_updated_at IS NULL then sr.review_created_at
           ELSE sr.review_updated_at
           END AS time
FROM studio_review sr
         JOIN studio s ON s.studio_id = sr.studio_id
WHERE s.studio_name LIKE '%퍼펙트%'
  AND sr.review_is_blinded = FALSE
ORDER BY sr.review_created_at DESC;

-- 스튜디오 리뷰 조회 (특정 장소 1개에 리뷰 조회)

SELECT s.studio_name,
       sr.review_content,
       sr.review_rating,
       CASE
           when sr.review_updated_at IS NULL then sr.review_created_at
           ELSE sr.review_updated_at
           END AS time
FROM studio_review sr
         JOIN studio s ON s.studio_id = sr.studio_id
WHERE s.studio_id = 2
  AND sr.review_is_blinded = FALSE
ORDER BY sr.review_created_at DESC;
