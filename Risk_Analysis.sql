-- ============================================
-- Credit Card Risk Analysis
-- 05 - Risk Analysis
-- ============================================


-- 1. Transactions above the average transaction amount
SELECT 
    transaction_id,
    transaction_date,
    merchant_category,
    amount
FROM transactions
WHERE amount > (
    SELECT AVG(amount)
    FROM transactions
)
ORDER BY amount DESC;


-- 2. Customers with spending above the average customer spending
WITH customer_spending AS (
    SELECT 
        c.customer_id,
        c.customer_name,
        SUM(t.amount) AS total_spending
    FROM customers c
    INNER JOIN credit_cards cc
        ON c.customer_id = cc.customer_id
    INNER JOIN transactions t
        ON cc.card_id = t.card_id
    GROUP BY c.customer_id, c.customer_name
)

SELECT *
FROM customer_spending
WHERE total_spending > (
    SELECT AVG(total_spending)
    FROM customer_spending
)
ORDER BY total_spending DESC;


-- 3. Customers with the highest number of declined transactions
SELECT 
    c.customer_id,
    c.customer_name,
    COUNT(*) AS declined_transactions
FROM customers c
INNER JOIN credit_cards cc
    ON c.customer_id = cc.customer_id
INNER JOIN transactions t
    ON cc.card_id = t.card_id
WHERE t.status = 'Declined'
GROUP BY c.customer_id, c.customer_name
ORDER BY declined_transactions DESC;


-- 4. Customers with unusually high transaction frequency
SELECT 
    c.customer_id,
    c.customer_name,
    COUNT(*) AS transaction_count
FROM customers c
INNER JOIN credit_cards cc
    ON c.customer_id = cc.customer_id
INNER JOIN transactions t
    ON cc.card_id = t.card_id
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(*) > 20
ORDER BY transaction_count DESC;


-- 5. Customers with high transaction frequency and total spending
SELECT 
    c.customer_id,
    c.customer_name,
    COUNT(*) AS transaction_count,
    SUM(t.amount) AS total_spending
FROM customers c
INNER JOIN credit_cards cc
    ON c.customer_id = cc.customer_id
INNER JOIN transactions t
    ON cc.card_id = t.card_id
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(*) > 20
ORDER BY total_spending DESC;
