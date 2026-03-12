-- =========================================================
-- SALES AND REVENUE ANALYSIS
-- =========================================================
-- Analysis of total revenue, revenue distribution by product
-- category, and identification of top performing sellers.
-- =========================================================


-- ---------------------------------------------------------
-- Total revenue generated
-- ---------------------------------------------------------
SELECT
    SUM(price) AS total_revenue
FROM ecommerce.order_items;



-- ---------------------------------------------------------
-- Revenue by product category
-- Identifies categories generating the most revenue
-- ---------------------------------------------------------
SELECT
    p.product_category_name,
    SUM(oi.price) AS revenue
FROM ecommerce.order_items AS oi
JOIN ecommerce.products AS p
    ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY revenue DESC;



-- ---------------------------------------------------------
-- Top 10 sellers by revenue
-- ---------------------------------------------------------
SELECT
    seller_id,
    SUM(price) AS revenue
FROM ecommerce.order_items
GROUP BY seller_id
ORDER BY revenue DESC
LIMIT 10;



-- ---------------------------------------------------------
-- Average price per order grouped by payment method
-- Helps understand spending behavior by payment type
-- ---------------------------------------------------------
SELECT
    op.payment_type,
    ROUND(AVG(oi.price), 2) AS avg_price
FROM ecommerce.order_items AS oi
INNER JOIN ecommerce.order_payments AS op
    ON oi.order_id = op.order_id
GROUP BY op.payment_type;



-- ---------------------------------------------------------
-- Distribution of payment methods
-- ---------------------------------------------------------
SELECT
    payment_type,
    COUNT(*) AS payments
FROM ecommerce.order_payments
GROUP BY payment_type
ORDER BY payments DESC;