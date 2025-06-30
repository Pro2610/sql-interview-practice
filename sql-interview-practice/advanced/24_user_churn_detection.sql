-- 🧠 Task 24: User Churn Detection

-- Define churn as users who stopped ordering for 60+ days.

-- Table: orders(user_id, order_date)

WITH user_orders AS (
  SELECT user_id,
         order_date,
         LAG(order_date) OVER (PARTITION BY user_id ORDER BY order_date) AS prev_order
  FROM orders
),
gaps AS (
  SELECT *,
         DATE_DIFF(order_date, prev_order, DAY) AS gap_days
  FROM user_orders
)
SELECT DISTINCT user_id
FROM gaps
WHERE gap_days >= 60;
