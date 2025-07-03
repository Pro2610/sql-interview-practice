-- 🔥 Task 30: Power Users (>=5 sessions in 7 days)

-- Визнач: які користувачі мали принаймні 5 унікальних сесій за будь-який 7-денний період.

-- Table: sessions(user_id, session_date)

WITH sessions_with_window AS (
  SELECT user_id,
         session_date,
         COUNT(*) OVER (
           PARTITION BY user_id
           ORDER BY session_date
           RANGE BETWEEN INTERVAL 6 DAY PRECEDING AND CURRENT ROW
         ) AS sessions_in_7_days
  FROM sessions
)
SELECT DISTINCT user_id
FROM sessions_with_window
WHERE sessions_in_7_days >= 5;
