SELECT winfo_name
     , winfo_rule
     , winfo_intensity
FROM winfo
WHERE winfo_name LIKE '%헬%'
ORDER BY winfo_name;