-- 🧠 Task 20: Orders not shipped yet

-- Return orders that have not been shipped (no record in shipments).

-- Tables:
-- orders(order_id)
-- shipments(order_id, shipped_date)

SELECT o.order_id
FROM orders o
LEFT JOIN shipments s ON o.order_id = s.order_id
WHERE s.shipped_date IS NULL;
