-- 🧪 Task 03: Basic JOIN

-- Return a list of orders with user emails.

-- Tables:
-- orders(order_id, user_id, order_date)
-- users(user_id, email)

SELECT o.order_id, o.order_date, u.email
FROM orders o
JOIN users u ON o.user_id = u.user_id;
