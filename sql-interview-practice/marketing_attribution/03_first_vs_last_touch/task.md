## 🧠 Task: First vs. Last Touch Attribution

Determine which ad campaign should receive credit for a conversion — the first or last one that brought the user.

### Available Tables:

**user_sessions**
- user_id (INT)
- session_id (INT)
- campaign_id (INT)
- session_date (DATE)

**conversions**
- user_id (INT)
- conversion_date (DATE)

### Expected Output:
| user_id | first_touch_campaign | last_touch_campaign |
|---------|----------------------|---------------------|
| 1       | Winter Sale          | Spring Promo        |
| 2       | Spring Promo         | Spring Promo        |

---

> For each user with a conversion:
> - First Touch = earliest session's campaign_id
> - Last Touch = latest session's campaign_id before conversion
