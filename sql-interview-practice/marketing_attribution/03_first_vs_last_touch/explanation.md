## 🧠 First vs. Last Touch Attribution — Explanation

### First-Touch Attribution:
Gives credit to the **first** campaign that brought the user.

### Last-Touch Attribution:
Gives credit to the **last** campaign that led to the conversion.

---

### Query Logic:

1. Join user sessions with conversions (only keep sessions **before or on** conversion date).
2. Use window functions:
   - `FIRST_VALUE()` to get the first campaign per user
   - `LAST_VALUE()` to get the last campaign before conversion
3. Use `DISTINCT` to keep one row per user

---

### Business Insight:
- Compare how many conversions each campaign generated via first-touch vs last-touch
- Helps adjust attribution models and budget allocation
