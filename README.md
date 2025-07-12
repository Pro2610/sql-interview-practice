# 🎯 SQL Interview Practice

This repository contains **typical SQL interview tasks**, organized by level and topic.

Each file includes:
- ✅ A realistic business task
- 💻 A SQL solution with comments
- 📂 One file per problem: easy to navigate and test

---

## 🧠 Beginner Tasks

| #  | Task Description                          | Topics Covered                    | File                                 |
|----|-------------------------------------------|-----------------------------------|--------------------------------------|
| 1  | Filter users by signup year & country     | `SELECT`, `WHERE`                | [01_select_from_where.sql](./01_select_from_where.sql) |
| 2  | Products with >100 units sold             | `GROUP BY`, `HAVING`             | [02_group_by_having.sql](./02_group_by_having.sql) |
| 3  | Join orders with user emails              | `JOIN`                           | [03_join_basic.sql](./03_join_basic.sql) |
| 4  | Top 3 users per month by revenue          | `RANK()`, `PARTITION BY`         | [04_window_rank.sql](./04_window_rank.sql) |
| 5  | Customer segmentation by spend            | `CASE WHEN`, `SUM()`             | [05_case_when.sql](./05_case_when.sql) |
| 6  | Users with purchases over €100            | `IN`, subquery in `WHERE`        | [06_subquery_in_where.sql](./06_subquery_in_where.sql) |
| 7  | Users with avg order value > €200         | `CTE`, `AVG()`                   | [07_cte_avg_order.sql](./07_cte_avg_order.sql) |
| 8  | User revenue growth by month              | `LAG()`, `% change`              | [08_lag_growth.sql](./08_lag_growth.sql) |
| 9  | Top 2 products per category               | `RANK()`, `PARTITION BY`         | [09_rank_top_n_category.sql](./09_rank_top_n_category.sql) |
| 10 | Merge EU and US user lists                | `UNION`, deduplication           | [10_union_datasets.sql](./10_union_datasets.sql) |
| 11 | Classify order size                       | `CASE WHEN`                      | [11_case_with_order_status.sql](./11_case_with_order_status.sql) |
| 12 | Unique users per month                    | `COUNT(DISTINCT)`, `GROUP BY`    | [12_distinct_users_per_month.sql](./12_distinct_users_per_month.sql) |
| 13 | Subquery in SELECT                        | `SELECT`, scalar subquery        | [13_subquery_in_select.sql](./13_subquery_in_select.sql) |
| 14 | Top 5 spenders                            | `ORDER BY`, `LIMIT`, `SUM()`     | [14_top_spenders_total.sql](./14_top_spenders_total.sql) |
| 15 | Count NULL values                         | `FILTER`, `COUNT()`              | [15_count_null_values.sql](./15_count_null_values.sql) |

---

## 🔁 Intermediate Tasks

| #  | Task Description                              | Topics Covered                        | File                                   |
|----|-----------------------------------------------|---------------------------------------|----------------------------------------|
| 16 | Users with total spend above average          | `CTE`, `JOIN`, `AVG()`                | [16_users_above_avg_spend.sql](./16_users_above_avg_spend.sql) |
| 17 | Users with multiple purchases same day        | `GROUP BY`, `HAVING`                  | [17_users_multiple_purchases_same_day.sql](./17_users_multiple_purchases_same_day.sql) |
| 18 | Products sold every month in 2024             | `WITH`, `COUNT(DISTINCT)`, logic      | [18_products_every_month.sql](./18_products_every_month.sql) |
| 19 | Users active in consecutive months            | `LAG()`, `DATE_DIFF`, `PARTITION BY`  | [19_power_users_consecutive_months.sql](./19_power_users_consecutive_months.sql) |
| 20 | Orders not shipped                            | `LEFT JOIN`, `NULL` handling          | [20_orders_not_shipped.sql](./20_orders_not_shipped.sql) |


---

## 🧪 Advanced Tasks

| #  | Task Description                             | Topics Covered                           | File                                      |
|----|-----------------------------------------------|-------------------------------------------|-------------------------------------------|
| 21 | Funnel conversion analysis                    | `CTE`, `JOIN`, step conversion            | [21_funnel_analysis.sql](./advanced/21_funnel_analysis.sql) |
| 22 | A/B test conversion rates                     | `GROUP BY`, `CASE`, metrics calculation   | [22_ab_test_conversion.sql](./advanced/22_ab_test_conversion.sql) |
| 23 | Monthly revenue retention by cohort           | `JOIN`, `DATE_DIFF`, cohort logic         | [23_monthly_revenue_retention.sql](./advanced/23_monthly_revenue_retention.sql) |
| 24 | Detect churned users with inactivity gap      | `LAG()`, `DATE_DIFF`, behavior detection  | [24_user_churn_detection.sql](./advanced/24_user_churn_detection.sql) |
| 25 | LTV by acquisition channel                    | `JOIN`, `COALESCE`, `AVG`, `SUM`          | [25_ltv_by_channel.sql](./advanced/25_ltv_by_channel.sql) |


## 📈 Product & Growth Analytics

| #  | Task Description                                 | Topics Covered                        | File                                                    |
|----|--------------------------------------------------|----------------------------------------|---------------------------------------------------------|
| 26 | Retention Curve by Signup Cohort                | `COHORT`, `WEEK`, `DATE_DIFF`         | [26_retention_curve_by_cohort.sql](./product_analytics/26_retention_curve_by_cohort.sql) |
| 27 | Product Stickiness (DAU / MAU)                   | `COUNT(DISTINCT)`, `DATE_TRUNC`       | [27_product_stickiness_dau_mau.sql](./product_analytics/27_product_stickiness_dau_mau.sql) |
| 28 | Feature Adoption Rate                            | `CROSS JOIN`, `GROUP BY`, % calculation | [28_feature_adoption_rate.sql](./product_analytics/28_feature_adoption_rate.sql) |
| 29 | Activation Rate (signup to first action)         | `MIN()`, `DATEDIFF`, conditional logic | [29_activation_rate.sql](./product_analytics/29_activation_rate.sql) |
| 30 | Power Users: 5 sessions in 7 days                | `WINDOW`, `FILTER`, `RANGE`           | [30_power_users.sql](./product_analytics/30_power_users.sql) |


## 📣 Marketing & Attribution Analytics

| #  | Task Description                            | Topics Covered                             | File                                                                 |
|----|---------------------------------------------|---------------------------------------------|----------------------------------------------------------------------|
| 31 | ROI by Campaign                             | `JOIN`, `GROUP BY`, ROI formula             | [31_roi_by_campaign.sql](./marketing_attribution/31_roi_by_campaign.sql) |
| 32 | First-Touch vs. Last-Touch Attribution      | `JOIN`, `MIN/MAX`, touchpoint logic         | [32_first_last_touch_attribution.sql](./marketing_attribution/32_first_last_touch_attribution.sql) |
| 33 | CAC by Acquisition Channel                  | `GROUP BY`, spend per new user              | [33_cac_by_channel.sql](./marketing_attribution/33_cac_by_channel.sql) |
| 34 | Paid vs. Organic Retention                  | `JOIN`, `DATE_DIFF`, cohort retention       | [34_paid_vs_organic_retention.sql](./marketing_attribution/34_paid_vs_organic_retention.sql) |
| 35 | Multi-Touch Attribution (U-Shape Model)     | `ROW_NUMBER()`, weighted conversion credit  | [35_multi_touch_u_shape.sql](./marketing_attribution/35_multi_touch_u_shape.sql) |


## 💼 Ad Hoc Business Requests

| #  | Task Description                            | Topics Covered                                | File                                                                |
|----|---------------------------------------------|------------------------------------------------|---------------------------------------------------------------------|
| 36 | Revenue Drop Investigation                  | `WEEK`, `LAG()`, % change                      | [36_revenue_drop_investigation.sql](./ad_hoc_requests/36_revenue_drop_investigation.sql) |
| 37 | Top Churned Users                           | `COUNT`, `MAX()`, inactivity check             | [37_top_churned_users.sql](./ad_hoc_requests/37_top_churned_users.sql) |
| 38 | Anomaly in User Signups                     | `PERCENTILE_CONT`, outlier detection           | [38_anomaly_user_signups.sql](./ad_hoc_requests/38_anomaly_user_signups.sql) |
| 39 | Compare Revenue Year over Year (YoY)        | `DATE_TRUNC`, `CASE`, `PIVOT`, YoY logic       | [39_compare_periods_yoy.sql](./ad_hoc_requests/39_compare_periods_yoy.sql) |
| 40 | Invalid Email Format Check                  | `REGEXP_CONTAINS`, email validation            | [40_invalid_email_check.sql](./ad_hoc_requests/40_invalid_email_check.sql) |



📈 Marketing & Attribution Analytics
This folder contains SQL tasks focused on measuring ad campaign performance and user conversion attribution.

🎯 Topics: ROAS, CPC, CTR, First/Last Touch Attribution, Revenue Breakdown, Multi-Touch Funnels

✅ Completed Cases:
#	Title	Description
01	ROAS by Campaign	Calculate return on ad spend (ROAS) per campaign
02	CPC & CTR by Campaign	Analyze cost-per-click and click-through rate
03	First vs. Last Touch	Compare first-touch vs last-touch attribution for conversions
04	Campaign Contribution to Revenue	Measure how much revenue each campaign generated
05	Multi-Touch Funnel Breakdown	Count how many campaigns users interacted with before converting

💡 Key Insights:
High CTR doesn’t always mean high revenue

ROAS reveals real campaign efficiency

Attribution model (first-touch vs last-touch) can impact budget decisions

Many users interact with 2+ campaigns before converting

📁 Data: Synthetic tables like ad_stats, user_sessions, conversions
🧪 Goal: Practice real-world SQL patterns used in growth, marketing & attribution analysis


Made with ☕ and `SELECT *` 💙
