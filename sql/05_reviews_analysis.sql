-- =========================================================
-- CUSTOMER REVIEWS ANALYSIS
-- =========================================================
-- Exploring review data and relationship between delivery
-- performance and customer satisfaction.
-- =========================================================


-- ---------------------------------------------------------
-- Orders with complete review comments
-- ---------------------------------------------------------
SELECT
    o.order_id,
    o.order_status,
    op.payment_type,
    orv.review_comment_message,
    orv.review_comment_title
FROM ecommerce.orders AS o
INNER JOIN ecommerce.order_payments AS op
    ON o.order_id = op.order_id
INNER JOIN ecommerce.order_reviews AS orv
    ON op.order_id = orv.order_id
WHERE orv.review_comment_message IS NOT NULL
AND orv.review_comment_title IS NOT NULL;



-- ---------------------------------------------------------
-- Distribution of order status among reviewed orders
-- ---------------------------------------------------------
SELECT
    o.order_status,
    COUNT(*) AS review_count
FROM ecommerce.orders AS o
INNER JOIN ecommerce.order_reviews AS orv
    ON o.order_id = orv.order_id
WHERE orv.review_comment_message IS NOT NULL
AND orv.review_comment_title IS NOT NULL
GROUP BY o.order_status
ORDER BY review_count DESC;



-- ---------------------------------------------------------
-- Relationship between delivery time and review score
-- ---------------------------------------------------------
SELECT
    orv.review_score,
    AVG(o.order_delivered_customer_date - o.order_purchase_timestamp)
        AS avg_delivery
FROM ecommerce.orders AS o
JOIN ecommerce.order_reviews AS orv
    ON o.order_id = orv.order_id
GROUP BY orv.review_score;