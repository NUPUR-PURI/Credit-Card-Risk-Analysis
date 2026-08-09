-- ============================================
-- Credit Card Risk Analysis
-- 02 - Data Quality Checks
-- ============================================

-- 1. Missing transaction amounts
SELECT COUNT(*) AS missing_amount
FROM transactions
WHERE amount IS NULL;


-- 2. Missing card IDs
SELECT COUNT(*) AS missing_card_id
FROM transactions
WHERE card_id IS NULL;


-- 3. Missing transaction status
SELECT COUNT(*) AS missing_status
FROM transactions
WHERE status IS NULL;


-- 4. Duplicate transaction IDs
SELECT 
    transaction_id,
    COUNT(*) AS duplicate_count
FROM transactions
GROUP BY transaction_id
HAVING COUNT(*) > 1;
