WITH monthly_conversions AS (
  SELECT
    DATE_TRUNC(conversion_date, MONTH) AS month,
    c.channel,
    COUNT(*) AS conversions
  FROM conversions conv
  JOIN campaigns c ON conv.campaign_id = c.campaign_id
  GROUP BY 1, 2
)

SELECT * FROM monthly_conversions
ORDER BY month, channel;
