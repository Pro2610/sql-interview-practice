-- 🧪 Task 28: Feature Adoption Rate

-- Мета: визначити, який % користувачів спробував певну функцію (наприклад: chat, upload, search).

-- Table: feature_events(user_id, feature_name)

-- Порахуємо adoption rate для кожної функції.

WITH total_users AS (
  SELECT COUNT(DISTINCT user_id) AS total FROM feature_events
),
adoption AS (
  SELECT feature_name,
         COUNT(DISTINCT user_id) AS users_using
  FROM feature_events
  GROUP BY feature_name
)
SELECT a.feature_name,
       a.users_using,
       t.total,
       ROUND(100.0 * a.users_using / t.total, 2) AS adoption_rate_pct
FROM adoption a
CROSS JOIN total_users t
ORDER BY adoption_rate_pct DESC;
