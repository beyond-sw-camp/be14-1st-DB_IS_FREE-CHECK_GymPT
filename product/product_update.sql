-- 제품 정보 수정
UPDATE product
SET product_name = '수정된 이름',
    product_desc = '수정 테스트 적용',
    product_updated_at = CURRENT_DATE
WHERE product_id = 1;