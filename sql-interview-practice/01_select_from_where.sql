-- 🧪 Task 01: Basic Filtering

-- Return all users who signed up in 2024 and are from Portugal.

-- Table: users
-- Columns:
-- - user_id (INT)
-- - signup_date (DATE)
-- - country (STRING)

SELECT *
FROM users
WHERE EXTRACT(YEAR FROM signup_date) = 2024
  AND country = 'Portugal';
