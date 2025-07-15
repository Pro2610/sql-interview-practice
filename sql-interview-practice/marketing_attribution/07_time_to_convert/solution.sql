WITH first_sessions AS (
  SELECT
    user_id,
    MIN(session_date) AS first_session_date
  FROM user_sessions
  GROUP BY user_id
),

conversion_lag AS (
  SELECT
    c.user_id,
    DATE_DIFF(c.conversion_date, f.first_session_date, DAY) AS days_to_convert
  FROM conversions c
  JOIN first_sessions f ON c.user_id = f.user_id
)

SELECT * FROM conversion_lag
ORDER BY days_to_convert;
