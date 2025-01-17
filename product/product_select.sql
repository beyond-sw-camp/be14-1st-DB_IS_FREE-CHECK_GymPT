-- 운동 제품 조회 구현
SELECT
    product_name,
    product_desc,
    product_url,
    case
        when product_updated_at IS NULL then product_created_at
        ELSE product_updated_at
        END AS TIME
FROM product
ORDER BY product_name ASC;