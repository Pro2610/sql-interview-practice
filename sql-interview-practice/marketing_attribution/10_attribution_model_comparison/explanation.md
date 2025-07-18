## ⚖️ Attribution Model Comparison — Explanation

This query compares how channels perform under First-Touch and Last-Touch attribution models.

---

### Why it matters:
- Different models = different conclusions
- Helps decide where to allocate marketing budget

---

### Query Logic:
1. Rank sessions per user before conversion (ASC and DESC)
2. Select first and last sessions
3. Union both and group by channel & model

---

### Business Insight:
- Some channels perform well on first impression (awareness)
- Others close the deal (conversion push)
- Knowing the difference helps with smarter spend
