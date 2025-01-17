-- 전체 조회

SELECT winfo_name
     , winfo_rule
     , winfo_intensity
FROM winfo
ORDER BY winfo_name;

-- 키워드 검색

SELECT winfo_name
     , winfo_rule
     , winfo_intensity
FROM winfo
WHERE winfo_name LIKE '%헬%'
ORDER BY winfo_name;