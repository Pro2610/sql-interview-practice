## 🧠 Task: Multi-Touch Funnel Breakdown

Analyze how many unique campaigns each converted user interacted with before making a conversion.

### Available Tables:

**user_sessions**
- user_id (INT)
- campaign_id (INT)
- session_date (DATE)

**conversions**
- user_id (INT)
- conversion_date (DATE)

### Expected Output:
| user_id | campaign_touch_count |
|---------|----------------------|
| 1       | 2                    |
| 2       | 1                    |
| 3       | 3                    |

Optional: add distribution, e.g. how many users had 1, 2, 3+ touchpoints
