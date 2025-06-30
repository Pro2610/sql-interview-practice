-- 📊 Task 23: Monthly Revenue Retention

-- Goal: For each cohort (signup month), show revenue by months since signup.

-- Tables:
-- users(user_id, signup_date)
-- orders(user_id, order_date, amount)

WITH cohorts AS (
  SELECT user_id,
         DATE_TRUNC('month', signup_date) AS cohort_month
  FROM users
),
orders_with_cohort AS (
  SELECT o.user_id,
         c.cohort_month,
         DATE_TRUNC('month', o.order_date) AS order_month,
         o.amount
  FROM orders o
  JOIN cohorts c ON o.user_id = c.user_id
),
months_diff AS (
  SELECT *,
         DATE_DIFF(order_month, cohort_month, MONTH) AS month_number
  FROM orders_with_cohort
)
SELECT cohort_month,
       month_number,
       ROUND(SUM(amount), 2) AS revenue
FROM months_diff
GROUP BY cohort_month, month_number
ORDER BY cohort_month, month_number;
