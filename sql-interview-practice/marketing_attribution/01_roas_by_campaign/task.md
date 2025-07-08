## 🧠 Task: ROAS by Campaign

Analyze advertising campaign performance by calculating ROAS (Return on Ad Spend).

### Available Tables:

**ad_campaigns**
- campaign_id (INT)
- campaign_name (STRING)
- spend (FLOAT)

**conversions**
- campaign_id (INT)
- revenue (FLOAT)

### Expected Output:
| campaign_id | campaign_name     | total_spend | total_revenue | roas  |
|-------------|-------------------|-------------|----------------|--------|
| 1           | Summer Promo      | 1000        | 3000           | 3.00   |
| 2           | Winter Holidays   | 1200        | 1800           | 1.50   |

ROAS = total_revenue / total_spend
