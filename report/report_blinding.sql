-- 신고 5회 이상일 시 해당 글 블라인드 기능 추가

UPDATE community_post
SET post_is_blinded = TRUE
WHERE post_id IN (SELECT post_id
                  FROM (SELECT post_id
                             , COUNT(*) AS count
                        FROM report
                        GROUP BY post_id) AS a
                  WHERE count >= 5
                    AND post_id IS NOT NULL);

UPDATE comment
SET comment_is_blinded = TRUE
WHERE comment_id IN (SELECT comment_id
                     FROM (SELECT comment_id
                                , COUNT(*) AS count
                           FROM report
                           GROUP BY comment_id) AS a
                     WHERE count >= 5
                       AND comment_id IS NOT NULL);

UPDATE place_review
SET review_is_blinded = TRUE
WHERE review_id IN (SELECT review_id
                    FROM (SELECT review_id
                               , COUNT(*) AS count
                          FROM report
                          GROUP BY review_id) AS a
                    WHERE count >= 5
                      AND review_id IS NOT NULL);

UPDATE studio_review
SET review_is_blinded = TRUE
WHERE review_id IN (SELECT review_id
                    FROM (SELECT review_id
                               , COUNT(*) AS count
                          FROM report
                          GROUP BY review_id) AS a
                    WHERE count >= 5
                      AND review_id IS NOT NULL);