-- 📊 Task 34: Retention — Paid vs. Organic users

-- Таблиці:
-- users(user_id, acquisition_type, signup_date)
-- events(user_id, event_date)

WITH cohorts AS (
  SELECT user_id,
         acquisition_type,
         DATE_TRUNC('day', signup_date) AS cohort_day
  FROM users
),
events_with_lag AS (
  SELECT e.user_id,
         u.acquisition_type,
         DATE_DIFF(DATE_TRUNC('day', e.event_date), DATE_TRUNC('day', u.signup_date), DAY) AS day_offset
  FROM events e
  JOIN users u ON e.user_id = u.user_id
),
retention AS (
  SELECT acquisition_type,
         day_offset,
         COUNT(DISTINCT user_id) AS retained_users
  FROM events_with_lag
  GROUP BY acquisition_type, day_offset
)
SELECT *
FROM retention
ORDER BY acquisition_type, day_offset;
