-- 🔍 Task 40: Find Users with Invalid Email Format

-- Виведи користувачів з email-адресами, які не містять '@' або мають підозрілий формат.

-- Table: users(user_id, email)

SELECT *
FROM users
WHERE NOT REGEXP_CONTAINS(email, r'^[^@]+@[^@]+\.[a-z]{2,}$');
