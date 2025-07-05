-- 💼 Task 36: Revenue Drop Investigation

-- Бізнес помітив падіння виручки. Перевір, на якому тижні воно сталося
-- і які продукти/категорії відповідальні за зміну.

-- Tables:
-- orders(order_id, order_date, product_id, revenue)
-- products(product_id, category)

WITH weekly_revenue AS (
  SELECT
    DATE_TRUNC(order_date, WEEK) AS week,
    SUM(revenue) AS total_revenue
  FROM orders
  GROUP BY 1
),
revenue_change AS (
  SELECT
    week,
    total_revenue,
    LAG(total_revenue) OVER (ORDER BY week) AS prev_week_revenue,
    ROUND((total_revenue - LAG(total_revenue) OVER (ORDER BY week)) * 100.0 /
          NULLIF(LAG(total_revenue) OVER (ORDER BY week), 0), 2) AS pct_change
  FROM weekly_revenue
)
SELECT *
FROM revenue_change
ORDER BY week;
