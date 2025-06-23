-- 🧪 Task 04: Window Function - RANK

-- For each month, find the top 3 users by revenue.

-- Table: orders(user_id, order_date, amount)

SELECT user_id,
       DATE_TRUNC('month', order_date) AS month,
       amount,
       RANK() OVER (PARTITION BY DATE_TRUNC('month', order_date)
                    ORDER BY amount DESC) AS rank
FROM orders;
