-- 💰 Task 33: CAC — Customer Acquisition Cost by Channel

-- Формула:
-- CAC = Total Spend / Number of New Customers

-- Tables:
-- marketing_spend(channel, spend)
-- users(user_id, acquisition_channel, signup_date)

WITH new_customers AS (
  SELECT acquisition_channel AS channel,
         COUNT(*) AS new_users
  FROM users
  GROUP BY acquisition_channel
)
SELECT
  s.channel,
  s.spend,
  nc.new_users,
  ROUND(s.spend * 1.0 / nc.new_users, 2) AS cac
FROM marketing_spend s
JOIN new_customers nc ON s.channel = nc.channel
ORDER BY cac DESC;
