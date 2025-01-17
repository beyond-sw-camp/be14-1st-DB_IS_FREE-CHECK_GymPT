/*
name: 운동 기록 조회 기능 구현
about: 사용자가 운동 후 설정한 운동 종류와 함께 기본적인 정보와 해당 각각 운동에 대한 세부정보를 제공해주는 기능을 구현한다.
기본적으로 나온 기록들과 운동 종류들은 테이블에 저장된다.
*/

-- 회원이 정한 운동의 종류를 기록하고, 그에 따른 기본데이터를 제공하는 기능 구현.
INSERT
INTO wRecord ( wrecord_date, wrecord_min, wrecord_cal, average_pace, wrecord_at, wrecord_intensity, user_id, workout_id
             , wplace_id)
VALUES (CURDATE(), '01:00:00', 150, '00:06:30', '14:00:00', 9, 1, 1, 2);

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
WHERE workout_id = 1 -- 개별조회기능$$$목록조회와 별개로 개별조회
ORDER BY wr.wrecord_date DESC;

-- 각각 운동에 대하여 세부적인 정보를 조회할수 있는 기능 제공.
-- 사용자가 날짜를 입력하면 과거 운동기록을 조회할 수 있다.
SELECT wr.wrecord_id
     , wr.wrecord_date
     , wr.wrecord_min
     , wr.wrecord_cal
     , wr.average_pace
     , wr.wrecord_at
     , wr.wrecord_intensity
     , info.winfo_name
FROM wRecord wr
         JOIN wInfo info ON wr.workout_id = info.winfo_id
WHERE wrecord_id = 3
ORDER BY wr.wrecord_date DESC;

-- 사용자가 저장된 과거의 기록을 삭제 할 수 있다.
DELETE
FROM wRecord
WHERE wrecord_id = 3;
