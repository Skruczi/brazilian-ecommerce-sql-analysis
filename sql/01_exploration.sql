-- =========================================================
-- BASIC DATA EXPLORATION
-- =========================================================
-- Initial exploration of the dataset to understand product
-- prices, product categories, and general data distribution.
-- =========================================================


-- ---------------------------------------------------------
-- Top 10 products with the highest price
-- ---------------------------------------------------------
SELECT
    product_id,
    price
FROM ecommerce.order_items
ORDER BY price DESC
LIMIT 10;



-- ---------------------------------------------------------
-- Count of products per category
-- Helps identify which product categories dominate the catalog
-- ---------------------------------------------------------
SELECT
    product_category_name,
    COUNT(*) AS product_count
FROM ecommerce.products
GROUP BY product_category_name
ORDER BY product_count DESC;



-- ---------------------------------------------------------
-- Products joined with their category
-- Used to verify product-category relationships
-- ---------------------------------------------------------
SELECT
    oi.product_id,
    oi.shipping_limit_date,
    oi.price,
    p.product_category_name
FROM ecommerce.order_items AS oi
INNER JOIN ecommerce.products AS p
    ON oi.product_id = p.product_id;