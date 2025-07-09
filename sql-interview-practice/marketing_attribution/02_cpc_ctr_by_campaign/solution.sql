SELECT
  campaign_id,
  campaign_name,
  impressions,
  clicks,
  spend,
  ROUND(100.0 * clicks / NULLIF(impressions, 0), 2) AS ctr,
  ROUND(spend / NULLIF(clicks, 0), 2) AS cpc
FROM ad_stats
ORDER BY ctr DESC;
