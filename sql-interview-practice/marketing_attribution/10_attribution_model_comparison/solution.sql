WITH session_ranked AS (
  SELECT
    s.user_id,
    s.channel,
    s.session_date,
    c.conversion_date,
    ROW_NUMBER() OVER (
      PARTITION BY s.user_id, c.conversion_date
      ORDER BY s.session_date ASC
    ) AS rn_first,
    ROW_NUMBER() OVER (
      PARTITION BY s.user_id, c.conversion_date
      ORDER BY s.session_date DESC
    ) AS rn_last
  FROM user_sessions s
  JOIN conversions c
    ON s.user_id = c.user_id AND s.session_date <= c.conversion_date
),

first_touch AS (
  SELECT channel, 'First-Touch' AS model
  FROM session_ranked
  WHERE rn_first = 1
),

last_touch AS (
  SELECT channel, 'Last-Touch' AS model
  FROM session_ranked
  WHERE rn_last = 1
),

combined AS (
  SELECT * FROM first_touch
  UNION ALL
  SELECT * FROM last_touch
)

SELECT
  channel,
  model,
  COUNT(*) AS conversions
FROM combined
GROUP BY channel, model
ORDER BY channel, model;
