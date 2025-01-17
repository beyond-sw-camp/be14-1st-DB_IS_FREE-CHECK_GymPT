-- 운동정보 삭제 (관리자만 가능)
DELETE FROM wInfo
WHERE winfo_id = 4 -- 삭제할 운동정보 ID
  AND EXISTS (
    SELECT 1
    FROM user
    WHERE user_id = 5 AND user_grant = 'Y'
);