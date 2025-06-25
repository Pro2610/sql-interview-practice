# 🎯 SQL Interview Practice

This repository contains **typical SQL interview tasks**, each in a standalone `.sql` file with:

✅ A clear problem statement  
✅ SQL solution with comments  
✅ Realistic tables and business logic  

---

## 📚 Tasks Overview

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

---

## 💡 Why This Repo?

These tasks simulate **real interview challenges** that test your:
- SQL logic & thinking
- Data manipulation
- Aggregation and filtering
- Window functions
- Data cleaning & merging

Perfect for:
- Daily practice
- Technical prep for data analyst roles
- Refreshing SQL before interviews

---

## 🚀 How to Use

1. Open any `.sql` file
2. Read the task description in comments
3. Try solving it before looking at the solution
4. Optionally: test in PostgreSQL / BigQuery / SQLite

---

## 🛠️ Coming Soon

- [ ] More tasks (CTEs, nested subqueries, analytical puzzles)
- [ ] Difficulty levels
- [ ] Solutions with BigQuery & PostgreSQL differences

---

Made with ☕ and `SELECT *` 💙
