WITH sessions_before_conversion AS (
  SELECT
    s.user_id,
    s.campaign_id
  FROM user_sessions s
  JOIN conversions c ON s.user_id = c.user_id
  WHERE s.session_date <= c.conversion_date
),

campaign_touch_counts AS (
  SELECT
    user_id,
    COUNT(DISTINCT campaign_id) AS campaign_touch_count
  FROM sessions_before_conversion
  GROUP BY user_id
)

SELECT * FROM campaign_touch_counts
ORDER BY campaign_touch_count DESC;
