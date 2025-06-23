-- 🧪 Task 05: Conditional Logic

-- Classify customers based on total spent:
-- 'High' if ≥ 1000, 'Medium' if 500–999, 'Low' if < 500

-- Table: orders(user_id, amount)

SELECT user_id,
       SUM(amount) AS total_spent,
       CASE
         WHEN SUM(amount) >= 1000 THEN 'High'
         WHEN SUM(amount) >= 500 THEN 'Medium'
         ELSE 'Low'
       END AS customer_segment
FROM orders
GROUP BY user_id;
