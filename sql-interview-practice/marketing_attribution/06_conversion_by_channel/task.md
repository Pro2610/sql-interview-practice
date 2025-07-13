## 📊 Task: Conversion by Channel Over Time

Analyze how many conversions happened per channel over time (monthly trend).

### Available Tables:

**conversions**
- user_id (INT)
- campaign_id (INT)
- conversion_date (DATE)

**campaigns**
- campaign_id (INT)
- channel (VARCHAR)

### Expected Output:
| month      | channel     | conversions |
|------------|-------------|-------------|
| 2024-01-01 | Social Ads  | 104         |
| 2024-01-01 | Google Ads  | 92          |
| 2024-02-01 | Email       | 120         |
| ...        | ...         | ...         |

> Group by month and channel.
