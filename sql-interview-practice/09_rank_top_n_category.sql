-- 🧪 Task 09: Top-N per category

-- For each category, find the top 2 best-selling products.

-- Table: products(product_id, category, units_sold)

SELECT product_id, category, units_sold,
       RANK() OVER (PARTITION BY category ORDER BY units_sold DESC) AS product_rank
FROM products
WHERE units_sold IS NOT NULL;
