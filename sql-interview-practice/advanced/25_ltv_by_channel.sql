-- 💸 Task 25: Lifetime Value (LTV) by acquisition channel

-- Calculate the average revenue per user by acquisition_channel.

-- Tables:
-- users(user_id, acquisition_channel)
-- orders(user_id, amount)

WITH user_revenue AS (
  SELECT user_id,
         SUM(amount) AS total_revenue
  FROM orders
  GROUP BY user_id
)
SELECT u.acquisition_channel,
       COUNT(DISTINCT u.user_id) AS users,
       ROUND(SUM(COALESCE(r.total_revenue, 0)), 2) AS total_revenue,
       ROUND(AVG(COALESCE(r.total_revenue, 0)), 2) AS avg_ltv
FROM users u
LEFT JOIN user_revenue r ON u.user_id = r.user_id
GROUP BY acquisition_channel
ORDER BY avg_ltv DESC;
