-- 운동 제품 입력 기능 구현
CREATE TABLE IF NOT EXISTS product
(
    product_id         INT          NOT NULL AUTO_INCREMENT,
    product_name       VARCHAR(100) NOT NULL,
    product_desc       TEXT(3000)   NOT NULL COMMENT '상품 설명',
    product_url        VARCHAR(255) NOT NULL,
    product_created_at DATE         NOT NULL DEFAULT (CURRENT_DATE),
    product_updated_at DATE         NULL,
    PRIMARY KEY (product_id)
) ENGINE = INNODB
  AUTO_INCREMENT = 1 COMMENT ='상품'
  DEFAULT CHARSET UTF8;
  
SELECT * FROM product;
-- 제품 정보 등록

INSERT
		 INTO product
	 values
	 (
	 NULL,
	 '골프채',
	 '가벼운 그립!',
	 'url/golfclub',
	 DEFAULT,
	 NULL
	 );
	 
-- 제품 정보 수정

UPDATE product
	SET product_name = '수정된 이름',
		 product_desc = '수정 테스트 적용',
		 product_updated_at = CURRENT_DATE
 WHERE product_id = 1;

-- 제품 정보 삭제

DELETE
	 FROM product
	 WHERE product_id = 2;