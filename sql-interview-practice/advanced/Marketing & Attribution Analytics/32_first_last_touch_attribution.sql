-- 📍 Task 32: First-Touch vs. Last-Touch Attribution

-- У користувача може бути кілька маркетингових подій до покупки.
-- Мета: порахувати кількість конверсій, що можна віднести до кожного каналу:
-- - перший контакт (first_touch)
-- - останній контакт перед покупкою (last_touch)

-- Tables:
-- user_touchpoints(user_id, touch_date, channel)
-- purchases(user_id, purchase_date)

WITH first_last_touch AS (
  SELECT
    u.user_id,
    MIN(u.touch_date) AS first_touch_date,
    MAX(u.touch_date) AS last_touch_date
  FROM user_touchpoints u
  JOIN purchases p ON u.user_id = p.user_id
  WHERE u.touch_date <= p.purchase_date
  GROUP BY u.user_id
),
attribution AS (
  SELECT
    f.user_id,
    f.first_touch_date,
    ft.channel AS first_touch_channel,
    f.last_touch_date,
    lt.channel AS last_touch_channel
  FROM first_last_touch f
  JOIN user_touchpoints ft ON f.user_id = ft.user_id AND f.first_touch_date = ft.touch_date
  JOIN user_touchpoints lt ON f.user_id = lt.user_id AND f.last_touch_date = lt.touch_date
)
SELECT
  first_touch_channel,
  COUNT(*) AS first_touch_conversions
FROM attribution
GROUP BY first_touch_channel

UNION ALL

SELECT
  last_touch_channel,
  COUNT(*) AS last_touch_conversions
FROM attribution
GROUP BY last_touch_channel;
