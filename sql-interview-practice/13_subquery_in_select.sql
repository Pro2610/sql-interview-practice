-- 🧪 Task 13: Subquery in SELECT

-- For each user, return:
-- - their name
-- - total number of orders

-- Tables:
-- users(user_id, name)
-- orders(order_id, user_id)

SELECT u.name,
       (SELECT COUNT(*) FROM orders o WHERE o.user_id = u.user_id) AS order_count
FROM users u;
