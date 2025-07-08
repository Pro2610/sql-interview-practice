SELECT
  a.campaign_id,
  a.campaign_name,
  a.spend AS total_spend,
  COALESCE(SUM(c.revenue), 0) AS total_revenue,
  ROUND(COALESCE(SUM(c.revenue), 0) / NULLIF(a.spend, 0), 2) AS roas
FROM ad_campaigns a
LEFT JOIN conversions c ON a.campaign_id = c.campaign_id
GROUP BY a.campaign_id, a.campaign_name, a.spend
ORDER BY roas DESC;
