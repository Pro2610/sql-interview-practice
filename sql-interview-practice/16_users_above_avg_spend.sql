-- 🧠 Task 16: Users who spent more than the average

-- Find users whose total spend is greater than the average user spend.

-- Table: orders(user_id, amount)

WITH user_totals AS (
  SELECT user_id,
         SUM(amount) AS total_spent
  FROM orders
  GROUP BY user_id
),
average_spend AS (
  SELECT AVG(total_spent) AS avg_spend
  FROM user_totals
)
SELECT u.user_id, u.total_spent
FROM user_totals u
JOIN average_spend a ON u.total_spent > a.avg_spend;
