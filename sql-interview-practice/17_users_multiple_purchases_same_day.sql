-- 🧠 Task 17: Users who made multiple purchases on the same day

-- Return user_id and date for users who made 2+ purchases on the same day.

-- Table: orders(user_id, order_date)

SELECT user_id,
       DATE(order_date) AS order_day,
       COUNT(*) AS purchases
FROM orders
GROUP BY user_id, order_day
HAVING COUNT(*) >= 2
ORDER BY user_id, order_day;
