-- 🚨 Task 38: Anomaly in User Signups

-- Перевір, чи були дні з підозрілим сплеском реєстрацій.

-- Table: users(user_id, signup_date)

WITH daily_signups AS (
  SELECT DATE(signup_date) AS day,
         COUNT(*) AS signups
  FROM users
  GROUP BY day
),
stats AS (
  SELECT
    PERCENTILE_CONT(signups, 0.5) OVER () AS median,
    PERCENTILE_CONT(signups, 0.9) OVER () AS high_threshold
  FROM daily_signups
)
SELECT d.*
FROM daily_signups d
JOIN stats s ON 1=1
WHERE d.signups > s.high_threshold
ORDER BY d.signups DESC;
