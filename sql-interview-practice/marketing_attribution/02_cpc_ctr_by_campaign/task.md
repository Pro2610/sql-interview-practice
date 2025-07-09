## 🧠 Task: CPC & CTR by Campaign

Analyze digital ad campaign performance using key efficiency metrics — CPC and CTR.

### Available Tables:

**ad_stats**
- campaign_id (INT)
- campaign_name (STRING)
- impressions (INT)
- clicks (INT)
- spend (FLOAT)

### Expected Output:
| campaign_id | campaign_name     | impressions | clicks | spend | ctr   | cpc   |
|-------------|-------------------|-------------|--------|-------|--------|--------|
| 1           | Spring Launch     | 10000       | 500    | 250   | 5.00%  | 0.50  |
| 2           | Black Friday      | 50000       | 1000   | 800   | 2.00%  | 0.80  |

> CTR = (clicks / impressions) * 100  
> CPC = spend / clicks
