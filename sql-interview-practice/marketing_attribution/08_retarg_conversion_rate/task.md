## 🔁 Task: Retargeting Conversion Rate

Compare conversion rates between users with only 1 session vs. users with multiple sessions before conversion.

### Available Tables:

**user_sessions**
- user_id (INT)
- session_id (INT)
- session_date (DATE)

**conversions**
- user_id (INT)

### Expected Output:
| session_count_group | users | conversions | conversion_rate |
|---------------------|-------|-------------|-----------------|
| 1 session           | 500   | 50          | 10.0%           |
| 2+ sessions         | 300   | 90          | 30.0%           |

> Group users before conversion based on session count
