-- 🧪 Task 06: Subquery in WHERE clause

-- Return all users who made at least one purchase over €100.

-- Tables:
-- users(user_id, name)
-- orders(order_id, user_id, amount)

SELECT *
FROM users
WHERE user_id IN (
  SELECT DISTINCT user_id
  FROM orders
  WHERE amount > 100
);
