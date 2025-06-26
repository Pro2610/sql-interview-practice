-- 🧪 Task 12: Count unique users per month

-- Table: events(user_id, event_date)

SELECT DATE_TRUNC('month', event_date) AS month,
       COUNT(DISTINCT user_id) AS unique_users
FROM events
GROUP BY month
ORDER BY month;
