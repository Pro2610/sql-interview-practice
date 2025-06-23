-- 🧪 Task 02: Aggregation + Filtering Groups

-- Find products that sold more than 100 units in total.

-- Table: sales
-- Columns:
-- - product_id (STRING)
-- - quantity (INT)

SELECT product_id,
       SUM(quantity) AS total_units
FROM sales
GROUP BY product_id
HAVING SUM(quantity) > 100;
