-- 💼 Task 37: Top Churned Users

-- Визнач користувачів, які зробили ≥3 замовлення, але не поверталися останні 60 днів.

-- Table: orders(user_id, order_date, revenue)

WITH order_counts AS (
  SELECT user_id,
         COUNT(*) AS total_orders,
         MAX(order_date) AS last_order
  FROM orders
  GROUP BY user_id
),
churned AS (
  SELECT *
  FROM order_counts
  WHERE total_orders >= 3
    AND last_order < CURRENT_DATE - INTERVAL 60 DAY
)
SELECT *
FROM churned
ORDER BY last_order;
