-- 🧠 Task 35: Multi-Touch Attribution — U-Shape Model

-- Вага:
-- 40% first_touch + 40% last_touch + 20% spread equally on middle touches

-- Tables:
-- user_touchpoints(user_id, touch_date, channel)
-- purchases(user_id, purchase_date)

WITH touches AS (
  SELECT t.user_id, t.touch_date, t.channel, p.purchase_date
  FROM user_touchpoints t
  JOIN purchases p ON t.user_id = p.user_id
  WHERE t.touch_date <= p.purchase_date
),
ranked AS (
  SELECT *,
         ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY touch_date) AS touch_rank,
         COUNT(*) OVER (PARTITION BY user_id) AS total_touches
  FROM touches
),
attribution AS (
  SELECT user_id, channel,
         CASE
           WHEN touch_rank = 1 THEN 0.4
           WHEN touch_rank = total_touches THEN 0.4
           ELSE ROUND(0.2 / NULLIF(total_touches - 2, 0), 4)
         END AS credit
  FROM ranked
)
SELECT channel,
       ROUND(SUM(credit), 4) AS total_attributed_conversions
FROM attribution
GROUP BY channel
ORDER BY total_attributed_conversions DESC;
