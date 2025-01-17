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