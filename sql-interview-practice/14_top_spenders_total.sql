-- 🧪 Task 14: Top 5 users by lifetime spend

-- Table: orders(user_id, amount)

SELECT user_id,
       SUM(amount) AS total_spent
FROM orders
GROUP BY user_id
ORDER BY total_spent DESC
LIMIT 5;
