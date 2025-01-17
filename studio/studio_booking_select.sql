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