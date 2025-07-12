## 🔁 Multi-Touch Funnel Breakdown — Explanation

This task shows how many different campaigns a user interacted with before converting.

---

### Why it matters:

- Some users convert after seeing just 1 campaign (single-touch)
- Others convert after multiple touches (multi-touch)

This helps model the true complexity of the user journey.

---

### Query Logic:

1. Join `user_sessions` and `conversions`
2. Filter only sessions **before or on** the conversion date
3. Count **unique campaign_id** per user
4. Optional: group users by touch count to build a funnel

---

### Business Insight:

- If most users convert after 2+ campaigns, we need multi-step strategies
- Helps decide whether to invest more in **retargeting**, **email sequences**, or **multi-channel marketing**
