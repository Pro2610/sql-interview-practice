-- 🧠 Task 19: Users active 2+ consecutive months

-- Identify users who made purchases in at least 2 consecutive months.

-- Table: orders(user_id, order_date)

WITH user_months AS (
  SELECT DISTINCT user_id,
         DATE_TRUNC('month', order_date) AS month
  FROM orders
),
lagged AS (
  SELECT user_id,
         month,
         LAG(month) OVER (PARTITION BY user_id ORDER BY month) AS prev_month
  FROM user_months
)
SELECT DISTINCT user_id
FROM lagged
WHERE DATE_DIFF(month, prev_month, MONTH) = 1;
