-- ============================================
-- Credit Card Risk Analysis
-- 03 - Customer Analysis
-- ============================================


-- 1. Total spending for each customer
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
ORDER BY total_spending DESC;


-- 2. Number of transactions made by each customer
SELECT 
    c.customer_id,
    c.customer_name,
    COUNT(t.transaction_id) AS transaction_count
FROM customers c
INNER JOIN credit_cards cc
    ON c.customer_id = cc.customer_id
INNER JOIN transactions t
    ON cc.card_id = t.card_id
GROUP BY c.customer_id, c.customer_name;


-- 3. Average transaction amount for each customer
SELECT 
    c.customer_id,
    c.customer_name,
    AVG(t.amount) AS avg_transaction_amount
FROM customers c
INNER JOIN credit_cards cc
    ON c.customer_id = cc.customer_id
INNER JOIN transactions t
    ON cc.card_id = t.card_id
GROUP BY c.customer_id, c.customer_name;


-- 4. Total credit limit available to each customer
SELECT 
    c.customer_id,
    c.customer_name,
    SUM(cc.credit_limit) AS total_credit_limit
FROM customers c
INNER JOIN credit_cards cc
    ON c.customer_id = cc.customer_id
GROUP BY c.customer_id, c.customer_name;
