-- 🧪 Task 10: UNION of two datasets

-- Combine users from two sources (Europe and US) into one unified list.

-- Tables:
-- users_eu(user_id, email)
-- users_us(user_id, email)

SELECT * FROM users_eu
UNION
SELECT * FROM users_us;
