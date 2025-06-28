-- 🧪 Task 22: A/B Test – Conversion Rate Lift

-- Users are split into groups A and B.
-- Each row is a user and whether they converted (1) or not (0).

-- Table: ab_test(user_id, group, converted)

-- Goal: Calculate conversion rate per group and the lift of group B over A.

SELECT group,
       COUNT(*) AS users,
       SUM(converted) AS conversions,
       ROUND(AVG(converted) * 100, 2) AS conversion_rate
FROM ab_test
GROUP BY group;
