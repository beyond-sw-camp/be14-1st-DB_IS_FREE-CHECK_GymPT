UPDATE user
SET
    user_email = 'new_email@example.com',
    user_pw = 'new_password',
    user_phone = '010-1234-5678',
    user_name = '홍길동',
    user_gender = 'M',
    user_address = '서울특별시 강남구',
    user_image = 'new_image_path.jpg',
    user_nickname = '길동이',
    user_height = 180.5,
    user_weight = 75.0,
    user_leave = NULL,  -- 탈퇴일이 없을 경우 NULL로 설정
    user_report = 0,    -- 신고 횟수를 초기화하거나 특정 값으로 설정
    user_grant = 'A'    -- 권한 등급을 'A'로 설정
WHERE user_id = 1;      -- 수정할 사용자의 ID
