-- 예약 가능 여부 확인
SELECT
    CASE
        WHEN EXISTS (
            SELECT 1
            FROM studio_booking sb
            WHERE sb.studio_id = 1 -- 예약하려는 스튜디오 ID
              AND (sb.start_time < '2025-02-07 16:00:00' AND sb.end_time > '2025-02-07 14:00:00') -- 겹치는 시간 검사
        ) THEN '예약 불가'
        ELSE '예약 가능'
        END AS 예약상태;
-- 기존 예약건을 스튜디오별로 조회하여 예약가능한지 먼저 확인 후(예약->수정->취소->예약현황)기능구현


-- 사용자 스튜디오 예약(스튜디오 2에 사용자 1이 10-12시 타임 예약)
INSERT INTO studio_booking (booking_date, start_time, end_time, user_id, studio_id)
SELECT '2025-01-18', '2025-01-18 10:00:00', '2025-01-18 12:00:00', 1, 2
FROM studio
WHERE studio_id = 2;

-- 사용자 스튜디오 예약 일정 수정
UPDATE studio_booking
SET start_time = '2025-01-18 14:00:00',
    end_time = '2025-01-18 16:00:00'
WHERE booking_id = 3
  AND user_id = 1;

-- 사용자 스튜디오 예약 취소
DELETE FROM studio_booking
WHERE booking_id = 3
  AND user_id = 1;

-- 본인 예약 현황 조회
SELECT
    sb.booking_date,
    sb.start_time,
    sb.end_time,
    s.studio_name,
    s.studio_address,
    s.studio_des,
    s.studio_price
FROM
    studio_booking sb
        JOIN
    studio s ON sb.studio_id = s.studio_id
WHERE
    sb.user_id = 1
ORDER BY
    sb.booking_date ASC, sb.start_time ASC;