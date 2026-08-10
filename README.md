# Credit Card Risk Analysis

## 📌 Project Overview

This project analyzes customer, credit card, and transaction data using SQL to understand customer spending behaviour and identify potential risk indicators.

The analysis focuses on customer spending, transaction patterns, transaction frequency, declined transactions, and high-value transactions.

The goal is to transform raw credit card data into meaningful business insights that can support risk monitoring and customer analysis.

---

## 🎯 Objectives

- Analyze customer spending behaviour
- Identify high-value transactions
- Analyze transaction frequency
- Identify customers with high spending
- Analyze declined transaction patterns
- Identify potential customer risk indicators
- Generate business insights from credit card transaction data

---

## 🛠️ Tools & Technologies

- **MySQL Workbench** – SQL analysis and execution
- **MySQL** – Database management
- **SQL** – Data exploration, data quality checks, joins, aggregations, subqueries, CTEs, and filtering

---

## 📊 Database Structure

The project uses three main tables:

### `customers`

Contains customer demographic and account information.

- `customer_id`
- `customer_name`
- `age`
- `city`
- `join_date`

### `credit_cards`

Contains credit card information.

- `card_id`
- `customer_id`
- `card_type`
- `credit_limit`
- `issue_date`

### `transactions`

Contains transaction-level information.

- `transaction_id`
- `card_id`
- `transaction_date`
- `merchant_category`
- `amount`
- `city`
- `transaction_type`
- `status`



## 🔍 Analysis Performed

### 1. Data Exploration

- Number of customers
- Number of credit cards
- Number of transactions
- Card types
- Transaction types
- Transaction statuses
- Total transaction amount
- Average transaction amount
- Minimum and maximum transaction amounts
- Transaction date range

### 2. Data Quality Analysis

- Checked for missing transaction amounts
- Checked for missing transaction statuses
- Checked for missing card relationships
- Checked for duplicate records
- Checked for potential data inconsistencies

### 3. Customer Analysis

- Total spending per customer
- Transaction count per customer
- Average transaction amount per customer
- Total credit limit available per customer

### 4. Transaction Analysis

- Merchant category with the highest transaction volume
- Merchant category with the highest total spending
- Transaction counts by status
- Average transaction amount by transaction type
- Top 10 highest-value transactions

### 5. Risk Analysis

- Transactions above the overall average transaction amount
- Customers with spending above average customer spending
- Customers with high numbers of declined transactions
- Customers with unusually high transaction frequency
- Customers with high transaction frequency and total spending

---

## 💡 Key Risk Indicators

| Risk Indicator | Purpose |
|---|---|
| High transaction amount | Identifies unusually large transactions |
| High customer spending | Identifies customers spending significantly above average |
| Declined transactions | Highlights repeated transaction failures |
| High transaction frequency | Identifies unusually frequent transaction activity |
| High frequency + spending | Combines multiple behavioural indicators |

> These indicators are analytical signals and should not be treated as definitive evidence of fraud or customer default.

---

## 📁 Project Structure

```text
Credit-Card-Risk-Analysis/
│
├── README.md
├── sql/
│   ├── 01_Data_Exploration.sql
│   ├── 02_Data_Quality.sql
│   ├── 03_Customer_Analysis.sql
│   ├── 04_Transaction_Analysis.sql
│   └── 05_Risk_Analysis.sql
│
└── screenshots/
    ├── 01_High_Value_Transactions.png
    ├── 02_High_Spending_Customers.png
    ├── 03_Declined_Transactions.png
    └── 04_High_Transaction_Frequency_Customers.png


---

## 📷 Analysis Screenshots

### High-Value Transactions

![High Value Transactions](screenshots/01_High_Value_Transactions.png)

### High-Spending Customers

![High Spending Customers](screenshots/02_High_Spending_Customers.png)

### Declined Transactions

![Declined Transactions](screenshots/03_Declined_Transactions.png)

### High Transaction Frequency

![High Transaction Frequency](screenshots/04_High_Transaction_Frequency_Customers.png)

---

## 📈 Business Insights

The analysis helps the business:

- Monitor customers with unusually high spending
- Identify transaction categories with significant activity
- Monitor repeated declined transactions
- Identify customers with unusually high transaction frequency
- Investigate unusually large transactions
- Prioritize potentially higher-risk activity for further review

---

## 🎯 Project Outcome

This project demonstrates practical SQL skills in:

- Data exploration
- Data quality analysis
- Joins
- Aggregations
- GROUP BY and HAVING
- Subqueries
- CTEs
- Customer analysis
- Transaction analysis
- Risk indicator analysis
- Business-oriented problem solving

---

## 👩‍💻 Author

**Nupur Puri**

Aspiring Data Analyst | SQL | Excel | Tableau | Python
