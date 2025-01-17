-- 회원이 정한 운동의 종류를 기록하고, 그에 따른 기본데이터를 제공하는 기능 구현.
INSERT
INTO wRecord ( wrecord_date, wrecord_min, wrecord_cal, average_pace, wrecord_at, wrecord_intensity, user_id, workout_id
             , wplace_id)
VALUES (CURDATE(), '01:00:00', 150, '00:06:30', '14:00:00', 9, 1, 1, 2);