-- 중복 확인 구문
-- 아래 각각의 count가 0이 아닐경우: 중복으로 가입 제한
-- 회원가입 구문
-- user_id 는 자동 증가
-- 그 외 컬럼은 아래 VALUES 양식을 맞추어 삽입
-- 데이터 입력시 오류방지를 위해 트랜잭션 안에서 기능 동작하게 함
-- 커밋전엔 반영 X 롤백 가능
START TRANSACTION;
INSERT INTO user (
    user_email,
    user_pw,
    user_phone,
    user_name,
    user_gender,
    user_address,
    user_image,
    user_nickname,
    user_height,
    user_weight,
    user_join,
    user_grant
) VALUES (
             'example@example.com',     -- 사용자 이메일
             'password123',             -- 사용자 비밀번호
             '010-1234-5678',           -- 사용자 전화번호
             '홍길동',                   -- 사용자 이름
             'M',                       -- 성별 (M/F)
             'Seoul, Korea',            -- 사용자 주소
             'profile_image_url',       -- 프로필 이미지 URL
             'nickname123',             -- 사용자 닉네임
             175.50,                    -- 키 (소수점 허용)
             70.00,                     -- 몸무게 (소수점 허용)
             CURRENT_DATE(),            -- 회원가입 날짜 (현재 날짜 자동 삽입)
             'N'                        -- 관리자 여부 (일반 유저: 'N', 관리자: 'Y')
         );
-- ROLLBACK;
-- 위에서 오류 발생하면 커밋 말고 롤백(주석 없애기)
COMMIT;