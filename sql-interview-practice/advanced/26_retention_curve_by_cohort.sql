-- 📊 Task 26: Retention Curve by Signup Cohort

-- Для кожного cohort-місяця порахуй, скільки користувачів повернулися в 0, 1, 2 ... N-й тиждень після реєстрації.

-- Tables:
-- users(user_id, signup_date)
-- events(user_id, event_date)

WITH user_cohorts AS (
  SELECT user_id,
         DATE_TRUNC('week', signup_date) AS cohort_week
  FROM users
),
event_weeks AS (
  SELECT e.user_id,
         DATE_TRUNC('week', e.event_date) AS event_week
  FROM events e
),
joined AS (
  SELECT c.user_id,
         c.cohort_week,
         DATE_DIFF(e.event_week, c.cohort_week, WEEK) AS week_number
  FROM user_cohorts c
  JOIN event_weeks e ON c.user_id = e.user_id
)
SELECT cohort_week,
       week_number,
       COUNT(DISTINCT user_id) AS retained_users
FROM joined
GROUP BY cohort_week, week_number
ORDER BY cohort_week, week_number;


### 📊 Visualization — Retention Curve by Cohort
  

🔗 Related to: [26_retention_curve_by_cohort.sql]

🖼 Example:

![Retention Heatmap](https://public.tableau.com/app/profile/yana.prozhuhan/viz/RetentionCurveAnalysisCohortHeatmap/Dashboard1)
