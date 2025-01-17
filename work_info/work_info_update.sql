-- 운동정보 수정 (관리자만 가능)
UPDATE wInfo
SET winfo_name = '끌오쑤삣',
    winfo_rule = '쬐뜰꼬뚜ㅣ어',
    winfo_intensity = 4
WHERE winfo_id = 4 -- 수정할 운동정보 ID
  AND EXISTS (
    SELECT 1
    FROM user
    WHERE user_id = 5 AND user_grant = 'Y'
);