-- 🧪 Task 08: LAG() for growth analysis

-- Show each user's revenue this month and previous month, plus % growth.

-- Table: orders(user_id, order_date, amount)

WITH monthly_revenue AS (
  SELECT user_id,
         DATE_TRUNC('month', order_date) AS month,
         SUM(amount) AS total_revenue
  FROM orders
  GROUP BY user_id, month
),
lagged AS (
  SELECT user_id,
         month,
         total_revenue,
         LAG(total_revenue) OVER (PARTITION BY user_id ORDER BY month) AS previous
  FROM monthly_revenue
)
SELECT *,
       ROUND((total_revenue - previous) * 100.0 / previous, 2) AS growth_pct
FROM lagged
WHERE previous IS NOT NULL;
