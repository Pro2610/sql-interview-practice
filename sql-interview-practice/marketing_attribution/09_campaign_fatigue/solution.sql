WITH weekly_stats AS (
  SELECT
    a.campaign_id,
    DATE_TRUNC(a.date, WEEK) AS week_start,
    SUM(a.clicks) AS total_clicks,
    SUM(a.impressions) AS total_impressions,
    ROUND(100.0 * SUM(a.clicks) / NULLIF(SUM(a.impressions), 0), 2) AS ctr
  FROM ad_stats a
  GROUP BY a.campaign_id, week_start
)

SELECT * FROM weekly_stats
ORDER BY campaign_id, week_start;
