-- 🧪 Task 15: Count NULL values per column

-- Table: users(user_id, email, phone, address)

SELECT
  COUNT(*) FILTER (WHERE email IS NULL) AS missing_email,
  COUNT(*) FILTER (WHERE phone IS NULL) AS missing_phone,
  COUNT(*) FILTER (WHERE address IS NULL) AS missing_address
FROM users;
