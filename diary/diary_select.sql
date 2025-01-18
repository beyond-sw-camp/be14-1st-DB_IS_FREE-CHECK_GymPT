-- 특정 회원 다이어리 목록 조회
SELECT diary_id,
       date,
       title,
       task,
       is_completed,
       color,
       sticker_id
FROM diary
WHERE user_id = 3;


-- 특정 회원 다이어리 목록중 한개 조회
SELECT diary_id,
       date,
       title,
       task,
       is_completed,
       color,
       sticker_id
FROM diary
WHERE user_id = 3
  AND diary_id = 31;