# Credit Card Risk Analysis

## 📌 Project Overview

This project analyzes customer, credit card, and transaction data using SQL to understand customer spending behaviour and identify potential risk indicators.

The analysis focuses on transaction patterns, customer spending, transaction frequency, declined transactions, and high-value transactions.

The goal is to transform raw transactional data into meaningful business insights that can support credit risk monitoring and customer analysis.

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

- **MySQL Workbench** – SQL analysis
- **MySQL** – Database and querying
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
