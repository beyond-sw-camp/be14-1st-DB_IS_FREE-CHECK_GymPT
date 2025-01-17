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
		