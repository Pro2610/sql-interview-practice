WITH revenue_per_campaign AS (
  SELECT
    campaign_id,
    SUM(revenue) AS total_revenue
  FROM conversions
  GROUP BY campaign_id
),
total AS (
  SELECT SUM(revenue) AS total_revenue_all FROM conversions
)

SELECT
  r.campaign_id,
  r.total_revenue,
  ROUND(100.0 * r.total_revenue / t.total_revenue_all, 2) AS revenue_share
FROM revenue_per_campaign r
CROSS JOIN total t
ORDER BY revenue_share DESC;
