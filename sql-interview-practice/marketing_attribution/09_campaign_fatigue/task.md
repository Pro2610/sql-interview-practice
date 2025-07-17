## 😴 Task: Campaign Fatigue Detection

Check if campaign performance declines over time. Focus on weekly trends in CTR (click-through rate).

### Available Tables:

**ad_stats**
- campaign_id (INT)
- date (DATE)
- impressions (INT)
- clicks (INT)

**campaigns**
- campaign_id (INT)
- campaign_name (VARCHAR)

### Expected Output:
| campaign_id | week_start | ctr       |
|-------------|------------|-----------|
| 101         | 2024-01-01 | 3.2%      |
| 101         | 2024-01-08 | 2.8%      |
| 101         | 2024-01-15 | 1.9%      |

> Optional: detect % drop between weeks
