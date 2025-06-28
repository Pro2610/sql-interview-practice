-- 🚀 Task 21: Funnel Analysis – Drop-off between steps

-- You have a 3-step signup funnel:
-- 1. View Landing Page
-- 2. Start Signup
-- 3. Complete Signup

-- Table: events(user_id, event_name, event_time)
-- Goal: Calculate how many users passed each step and the conversion % between steps.

WITH step_counts AS (
  SELECT event_name,
         COUNT(DISTINCT user_id) AS users
  FROM events
  WHERE event_name IN ('view_landing', 'start_signup', 'complete_signup')
  GROUP BY event_name
),
funnel AS (
  SELECT
    (SELECT users FROM step_counts WHERE event_name = 'view_landing') AS viewed,
    (SELECT users FROM step_counts WHERE event_name = 'start_signup') AS started,
    (SELECT users FROM step_counts WHERE event_name = 'complete_signup') AS completed
)
SELECT *,
       ROUND(started * 100.0 / viewed, 2) AS view_to_start_pct,
       ROUND(completed * 100.0 / started, 2) AS start_to_complete_pct
FROM funnel;
