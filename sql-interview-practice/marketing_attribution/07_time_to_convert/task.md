## ⏱ Task: Time to Convert (Avg & Distribution)

Calculate the number of days it takes each user to convert (from first session to conversion). Then analyze the average and distribution.

### Available Tables:

**user_sessions**
- user_id (INT)
- session_date (DATE)

**conversions**
- user_id (INT)
- conversion_date (DATE)

### Expected Output (per user):
| user_id | days_to_convert |
|---------|------------------|
| 1       | 5                |
| 2       | 0                |
| 3       | 14               |

> Optionally: add average, median, percentiles
