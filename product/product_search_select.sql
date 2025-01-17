-- 운동 제품 검색 구현
SELECT
		 product_name,
		 product_desc,
		 product_url,
		 case
		 when product_updated_at IS NULL then product_created_at
		 ELSE product_updated_at
		 END AS TIME
	 FROM product
	 WHERE product_name LIKE '%런닝%'
	 ORDER BY product_name ASC;
		