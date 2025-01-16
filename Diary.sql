/* 스티커 기본 데이터 입력문*/

INSERT
INTO sticker
(sticker_id, sticker_size, sticker_color)
VALUES (NULL, 5, 'red'
       );
/* 다이어리 입력문 */
INSERT
INTO diary
(diary_id, date, title, task, is_completed, color, sticker_id, user_id)
VALUES
    (NULL, CURDATE(), '제목', '오늘운동은상체',
     'Done', 'red',1,1
    );

/* is_completed(체크여부) Done, InProgress, dToDo */
/* 대부분 사이즈 관련은 1~5로 정의*/
/* 색관련은 소문자로 통일*/