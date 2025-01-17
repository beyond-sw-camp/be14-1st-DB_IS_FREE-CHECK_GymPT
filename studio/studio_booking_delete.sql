-- 사용자 스튜디오 예약 취소
DELETE FROM studio_booking
WHERE booking_id = 3
  AND user_id = 1;