-- 사용자 스튜디오 예약 일정 수정
UPDATE studio_booking
SET start_time = '2025-01-18 14:00:00',
    end_time = '2025-01-18 16:00:00'
WHERE booking_id = 3
  AND user_id = 1;