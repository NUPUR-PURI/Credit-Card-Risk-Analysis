-- ============================================
-- Credit Card Risk Analysis
-- 04 - Transaction Analysis
-- ============================================


-- 1. Merchant category with the highest number of transactions
SELECT 
    merchant_category,
    COUNT(*) AS transaction_count
FROM transactions
GROUP BY merchant_category
ORDER BY transaction_count DESC
LIMIT 1;


-- 2. Merchant category with the highest total spending
SELECT 
    merchant_category,
    SUM(amount) AS total_spending
FROM transactions
GROUP BY merchant_category
ORDER BY total_spending DESC
LIMIT 1;


-- 3. Average transaction amount by transaction type
SELECT 
    transaction_type,
    AVG(amount) AS avg_transaction_amount
FROM transactions
GROUP BY transaction_type
ORDER BY avg_transaction_amount DESC;


-- 4. Top 10 highest-value transactions
SELECT 
    transaction_id,
    transaction_date,
    merchant_category,
    amount
FROM transactions
ORDER BY amount DESC
LIMIT 10;
