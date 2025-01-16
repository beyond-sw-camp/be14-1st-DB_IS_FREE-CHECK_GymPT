UPDATE `user`
SET
    `user_email` = CASE WHEN ? IS NOT NULL THEN ? ELSE `user_email` END,
    `user_phone` = CASE WHEN ? IS NOT NULL THEN ? ELSE `user_phone` END,
    `user_name` = CASE WHEN ? IS NOT NULL THEN ? ELSE `user_name` END,
    `user_gender` = CASE WHEN ? IS NOT NULL THEN ? ELSE `user_gender` END,
    `user_address` = CASE WHEN ? IS NOT NULL THEN ? ELSE `user_address` END,
    `user_image` = CASE WHEN ? IS NOT NULL THEN ? ELSE `user_image` END,
    `user_nickname` = CASE WHEN ? IS NOT NULL THEN ? ELSE `user_nickname` END,
    `user_height` = CASE WHEN ? IS NOT NULL THEN ? ELSE `user_height` END,
    `user_weight` = CASE WHEN ? IS NOT NULL THEN ? ELSE `user_weight` END
WHERE `user_id` = 0;
