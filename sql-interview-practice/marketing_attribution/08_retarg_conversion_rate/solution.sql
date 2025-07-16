WITH sessions_before_conversion AS (
  SELECT
    s.user_id,
    COUNT(DISTINCT s.session_id) AS session_count
  FROM user_sessions s
  JOIN conversions c ON s.user_id = c.user_id
  WHERE s.session_date <= c.conversion_date
  GROUP BY s.user_id
),

session_groups AS (
  SELECT
    user_id,
    CASE 
      WHEN session_count = 1 THEN '1 session'
      ELSE '2+ sessions'
    END AS session_count_group
  FROM sessions_before_conversion
),

conversion_flag AS (
  SELECT DISTINCT user_id, 1 AS converted FROM conversions
)

SELECT
  sg.session_count_group,
  COUNT(DISTINCT sg.user_id) AS users,
  COUNT(DISTINCT cf.user_id) AS conversions,
  ROUND(100.0 * COUNT(DISTINCT cf.user_id) / COUNT(DISTINCT sg.user_id), 2) AS conversion_rate
FROM session_groups sg
LEFT JOIN conversion_flag cf ON sg.user_id = cf.user_id
GROUP BY sg.session_count_group
ORDER BY session_count_group;
