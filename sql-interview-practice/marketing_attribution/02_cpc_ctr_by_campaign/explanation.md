## 📊 CPC & CTR by Campaign — Explanation

### What is CTR?

**CTR (Click-Through Rate)** measures the percentage of users who clicked on an ad:
> CTR = (Clicks / Impressions) * 100

---

### What is CPC?

**CPC (Cost per Click)** shows how much we pay per click:
> CPC = Spend / Clicks

---

### Query Logic

1. Select raw metrics: impressions, clicks, spend
2. Calculate CTR using safe division with `NULLIF` to avoid division by zero
3. Calculate CPC similarly
4. Round values to 2 decimals for clarity

---

### Business Insight

- High **CTR** → Ad is relevant and attractive
- Low **CPC** → Efficient spend
- Combined metrics help optimize ad creatives and budget allocation
