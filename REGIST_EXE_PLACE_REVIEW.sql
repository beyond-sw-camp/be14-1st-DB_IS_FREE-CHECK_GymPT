INSERT INTO place_review (
    review_title,
    review_content,
    review_rating,
    review_updated_at,
    review_is_blinded,
    wplace_id,
    user_id
)
VALUES
    (
        '별로에요',
        '친절해요',
        5,
        '2025-01-01 14:00:00',
        FALSE,
        3, -- 유효한 wplace_id (실제 wplace_id를 가져와야함)
        1 -- 유효한 user_id (실제 user_id를 가져와야함)
    );
