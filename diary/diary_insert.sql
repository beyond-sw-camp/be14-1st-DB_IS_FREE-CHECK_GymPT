/* 다이어리 입력문 */
INSERT
INTO diary
    (diary_id, date, title, task, is_completed, color, sticker_id, user_id)
VALUES (NULL, CURDATE(), '제목', '오늘운동은상체', 'Done', 'red', 1, 1);