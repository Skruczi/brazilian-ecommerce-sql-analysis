-- =========================================================
-- DELIVERY AND ORDER TIMING ANALYSIS
-- =========================================================
-- Understanding delivery times and seasonality of orders.
-- =========================================================


-- ---------------------------------------------------------
-- Orders distribution by month
-- Identifies seasonality in purchasing behavior
-- ---------------------------------------------------------
SELECT
    EXTRACT(MONTH FROM order_purchase_timestamp) AS month,
    COUNT(*) AS orders_count
FROM ecommerce.orders
GROUP BY month
ORDER BY orders_count DESC;



-- ---------------------------------------------------------
-- Average delivery time
-- Calculates the average time between purchase and delivery
-- ---------------------------------------------------------
SELECT
    AVG(order_delivered_customer_date - order_purchase_timestamp)
    AS avg_delivery_time
FROM ecommerce.orders
WHERE order_delivered_customer_date IS NOT NULL;