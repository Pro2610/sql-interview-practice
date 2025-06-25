-- 🧪 Task 07: CTE + Aggregation

-- Find users whose average order amount is greater than €200.

-- Table: orders(user_id, amount)

WITH user_avg AS (
  SELECT user_id,
         AVG(amount) AS avg_amount
  FROM orders
  GROUP BY user_id
)
SELECT *
FROM user_avg
WHERE avg_amount > 200;
