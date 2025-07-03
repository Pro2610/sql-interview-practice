-- 🔓 Task 29: Activation Rate

-- Визнач: який % користувачів виконав ключову дію (наприклад, створив перший пост) протягом 1 дня після реєстрації.

-- Tables:
-- users(user_id, signup_date)
-- events(user_id, event_type, event_date)

WITH first_actions AS (
  SELECT user_id,
         MIN(event_date) AS first_action_date
  FROM events
  WHERE event_type = 'post_created'
  GROUP BY user_id
),
activated AS (
  SELECT u.user_id,
         u.signup_date,
         f.first_action_date,
         DATE_DIFF(f.first_action_date, u.signup_date, DAY) AS days_to_action
  FROM users u
  JOIN first_actions f ON u.user_id = f.user_id
)
SELECT
  COUNT(*) AS total_users,
  COUNTIF(days_to_action <= 1) AS activated_users,
  ROUND(COUNTIF(days_to_action <= 1) * 100.0 / COUNT(*), 2) AS activation_rate_pct
FROM activated;
