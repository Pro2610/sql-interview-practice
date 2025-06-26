-- 🧪 Task 11: CASE WHEN with multiple conditions

-- Label orders as:
-- 'High' if amount ≥ 500
-- 'Medium' if 200–499
-- 'Low' if < 200

-- Table: orders(order_id, amount)

SELECT order_id,
       amount,
       CASE
         WHEN amount >= 500 THEN 'High'
         WHEN amount >= 200 THEN 'Medium'
         ELSE 'Low'
       END AS order_status
FROM orders;
