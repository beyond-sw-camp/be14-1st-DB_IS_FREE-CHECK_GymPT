-- 전체 운동 기록 조회
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
ORDER BY wr.wrecord_date DESC;