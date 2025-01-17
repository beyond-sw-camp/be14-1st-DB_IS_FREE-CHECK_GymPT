/*
    DELETE, UPDATE, INSERT 작업으로 인해 테이블 내부에 발생한 조각화(빈공간)를 주기적으로 다시 정렬 및 재배치 스케줄러
    이 과정에서 테이블의 크기가 줄고 읽기/쓰기 성능 개선
*/
-- EVENT 스케줄러 활성화
SET GLOBAL event_scheduler = ON;

-- 이벤트 생성
CREATE EVENT optimize_tables_event
    ON SCHEDULE EVERY 1 WEEK
        STARTS TIMESTAMP(CURRENT_DATE + INTERVAL 1 DAY) + INTERVAL '02:00:00' HOUR_SECOND -- 매주 월요일 새벽 2시에 시작
    DO
    BEGIN
        OPTIMIZE TABLE user;
        OPTIMIZE TABLE wPlace;
        OPTIMIZE TABLE place_review;
        OPTIMIZE TABLE diary;
    END;
