-- 운동정보 등록 (관리자만 가능)
INSERT INTO wInfo (winfo_name, winfo_rule, winfo_intensity)
SELECT  '크로스핏', '그냥 쇠 들고 뛰어', 5
FROM user
WHERE user_id = 5 AND user_grant = 'Y';