-- 개별 운동 기록 조회(hancoal 수정)
SELECT wr.wrecord_id
     , wr.wrecord_date
     , wr.wrecord_min
     , wr.wrecord_cal
     , wr.average_pace
     , wr.wrecord_at
     , wr.wrecord_intensity
     , info.winfo_name
FROM wRecord wr
         JOIN wInfo info ON workout_id = info.winfo_id
WHERE workout_id = 1 -- 개별조회기능$$$목록조회와 별개로 개별조회
ORDER BY wr.wrecord_date DESC;