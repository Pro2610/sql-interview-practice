-- 📣 Task 31: ROI by Marketing Campaign

-- Обчисли ROI для кожної рекламної кампанії:
-- ROI = (Revenue - Cost) / Cost * 100

-- Table: campaigns(campaign_id, campaign_name, cost)
-- Table: orders(order_id, user_id, campaign_id, revenue)

SELECT
  c.campaign_name,
  c.cost,
  ROUND(SUM(o.revenue), 2) AS total_revenue,
  ROUND((SUM(o.revenue) - c.cost) * 100.0 / c.cost, 2) AS roi_pct
FROM campaigns c
LEFT JOIN orders o ON c.campaign_id = o.campaign_id
GROUP BY c.campaign_name, c.cost
ORDER BY roi_pct DESC;
