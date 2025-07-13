## 📈 Conversion by Channel Over Time — Explanation

Shows the number of conversions per marketing channel on a monthly basis.

---

### Why it matters:
- Tracks channel effectiveness over time
- Reveals seasonality or campaign fatigue
- Useful for time series analysis and forecasting

---

### Query Logic:
1. Join `conversions` with `campaigns` to get channel info
2. Truncate `conversion_date` to month level
3. Count conversions per (month, channel) pair

---

### Visualization Tip:
Perfect for a **line chart** or **stacked bar chart** in Tableau / Power BI
