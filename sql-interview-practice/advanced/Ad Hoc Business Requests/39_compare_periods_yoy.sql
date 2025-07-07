-- 📅 Task 39: Compare Revenue Year over Year

-- Порівняй дохід за кожен місяць цього року з аналогічним місяцем минулого року.

-- Table: orders(order_date, revenue)

WITH monthly_revenue AS (
  SELECT
    DATE_TRUNC(order_date, MONTH) AS month,
    EXTRACT(YEAR FROM order_date) AS year,
    SUM(revenue) AS total_revenue
  FROM orders
  GROUP BY 1, 2
),
pivoted AS (
  SELECT
    DATE_TRUNC(month, MONTH) AS month,
    MAX(CASE WHEN year = EXTRACT(YEAR FROM CURRENT_DATE) THEN total_revenue END) AS this_year,
    MAX(CASE WHEN year = EXTRACT(YEAR FROM CURRENT_DATE) - 1 THEN total_revenue END) AS last_year
  FROM monthly_revenue
  GROUP BY month
)
SELECT *,
       ROUND((this_year - last_year) * 100.0 / NULLIF(last_year, 0), 2) AS yoy_change_pct
FROM pivoted
ORDER BY month;


### 📊 Retention Curve Analysis

[![Retention Curve](https://public.tableau.com/app/profile/yana.prozhuhan/viz/MonthlyRevenueYoYComparison_/Dashboard1)

🎯 Goal: Analyze user retention by cohort  
📈 Method: Cohort heatmap  
🔍 Insight: Most cohorts drop by 50% by Day 2
