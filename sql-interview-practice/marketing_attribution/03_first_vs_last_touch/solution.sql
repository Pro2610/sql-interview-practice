WITH sessions_before_conversion AS (
  SELECT
    s.user_id,
    s.session_id,
    s.campaign_id,
    s.session_date,
    c.conversion_date
  FROM user_sessions s
  JOIN conversions c ON s.user_id = c.user_id
  WHERE s.session_date <= c.conversion_date
),

first_last_touch AS (
  SELECT
    user_id,
    FIRST_VALUE(campaign_id) OVER (PARTITION BY user_id ORDER BY session_date ASC) AS first_touch_campaign,
    LAST_VALUE(campaign_id) OVER (PARTITION BY user_id ORDER BY session_date ASC 
                                  ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS last_touch_campaign
  FROM sessions_before_conversion
)

SELECT DISTINCT user_id, first_touch_campaign, last_touch_campaign
FROM first_last_touch;
