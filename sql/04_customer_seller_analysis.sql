-- =========================================================
-- CUSTOMER AND SELLER DISTRIBUTION
-- =========================================================
-- Analysis of geographic distribution of customers and
-- sellers across states and cities.
-- =========================================================


-- ---------------------------------------------------------
-- Distribution of sellers across cities and states
-- Includes average product price per location
-- ---------------------------------------------------------
SELECT
    s.seller_city,
    s.seller_state,
    COUNT(*) AS sellers_count,
    ROUND(AVG(oi.price), 2) AS avg_product_price
FROM ecommerce.sellers AS s
INNER JOIN ecommerce.order_items AS oi
    ON s.seller_id = oi.seller_id
GROUP BY s.seller_city, s.seller_state
ORDER BY sellers_count DESC, seller_state DESC;



-- ---------------------------------------------------------
-- Distribution of orders by customer state
-- ---------------------------------------------------------
SELECT
    c.customer_state,
    COUNT(*) AS orders
FROM ecommerce.customers AS c
INNER JOIN ecommerce.orders AS o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_state
ORDER BY orders DESC;