## 📊 ROAS by Campaign — Explanation

### What is ROAS?

ROAS (Return on Ad Spend) is a core performance metric in digital marketing:

> **ROAS = Total Revenue / Total Spend**

It tells us how much revenue was generated for each $1 spent on a campaign.

---

### Query Logic

1. Join `ad_campaigns` and `conversions` on `campaign_id`
2. Use `SUM(revenue)` to calculate total revenue per campaign
3. Use `spend` directly from `ad_campaigns`
4. Use `COALESCE` to handle campaigns with no conversions
5. Divide revenue by spend, round to 2 decimals

---

### Business Insight

- Campaigns with **ROAS > 1.0** are profitable
- Campaigns with **ROAS < 1.0** spend more than they earn
- This helps allocate budget to top-performing campaigns
