-- ============================================
-- Credit Card Risk Analysis
-- 01 - Data Exploration
-- ============================================

-- 1. Total number of customers
SELECT COUNT(*) AS total_customers
FROM customers;


-- 2. Total number of credit cards
SELECT COUNT(*) AS total_cards
FROM credit_cards;


-- 3. Total number of transactions
SELECT COUNT(*) AS total_transactions
FROM transactions;


-- 4. Available credit card types
SELECT DISTINCT card_type
FROM credit_cards;


-- 5. Number of cards by card type
SELECT card_type, COUNT(*) AS card_count
FROM credit_cards
GROUP BY card_type;


-- 6. Number of transactions by transaction type
SELECT transaction_type, COUNT(*) AS transaction_count
FROM transactions
GROUP BY transaction_type;


-- 7. Number of transactions by status
SELECT status, COUNT(*) AS transaction_count
FROM transactions
GROUP BY status;


-- 8. Total transaction amount
SELECT SUM(amount) AS total_amount
FROM transactions;


-- 9. Average transaction amount
SELECT AVG(amount) AS avg_amount
FROM transactions;


-- 10. Minimum and maximum transaction amount
SELECT 
    MIN(amount) AS min_amount,
    MAX(amount) AS max_amount
FROM transactions;


-- 11. Earliest and latest transaction date
SELECT 
    MIN(transaction_date) AS earliest_date,
    MAX(transaction_date) AS latest_date
FROM transactions;
