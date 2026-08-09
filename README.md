# Credit Card Risk Analysis

## 📌 Project Overview

This project analyzes customer, credit card, and transaction data using SQL to identify spending patterns and develop customer risk indicators.

The analysis combines customer-level information, credit card details, and transaction behaviour to understand factors that may indicate higher-risk customers.

## 🛠️ Tools & Technologies

- **MySQL** – Data analysis and querying
- **SQL** – Data exploration, data quality checks, aggregations, joins, CTEs, and window functions

## 📊 Database Structure

The project uses three main tables:

- `customers` – Customer demographic and account information
- `credit_cards` – Credit card details and credit limits
- `transactions` – Transaction-level spending and status information

### Table Relationships

```text
customers
    │
    │ customer_id
    ↓
credit_cards
    │
    │ card_id
    ↓
transactions
