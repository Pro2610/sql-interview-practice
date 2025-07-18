## ⚖️ Task: Attribution Model Comparison

Compare conversion attribution by channel using First-Touch and Last-Touch models.

### Available Tables:

**user_sessions**
- user_id (INT)
- session_date (DATE)
- channel (VARCHAR)

**conversions**
- user_id (INT)
- conversion_date (DATE)

### Expected Output:
| channel     | model         | conversions |
|-------------|---------------|-------------|
| Google Ads  | First-Touch   | 120         |
| Google Ads  | Last-Touch    | 95          |
| Facebook    | First-Touch   | 80          |
| Facebook    | Last-Touch    | 110         |

> First-Touch = earliest session before conversion  
> Last-Touch = latest session before conversion
