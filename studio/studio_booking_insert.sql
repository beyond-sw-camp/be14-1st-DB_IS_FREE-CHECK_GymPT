-- 사용자 스튜디오 예약(스튜디오 2에 사용자 1이 10-12시 타임 예약)
INSERT INTO studio_booking (booking_date, start_time, end_time, user_id, studio_id)
SELECT '2025-01-18', '2025-01-18 10:00:00', '2025-01-18 12:00:00', 1, 2
FROM studio
WHERE studio_id = 2;