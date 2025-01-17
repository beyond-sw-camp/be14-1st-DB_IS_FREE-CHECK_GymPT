-- 다이어리 수정 기능 구현
UPDATE diary
SET date         = now(),
    title        = '오늘 점심 족발?',
    task         = '오늘 점심을 뭐먹을지 고민해봐야겠다.',
    is_completed = 'InProgress',
    color        = 'blue',
    sticker_id = 2
WHERE diary_id = 1;

-- 다이어리 삭제 기능 구현
DELETE
    FROM diary
WHERE diary_id = 100;
