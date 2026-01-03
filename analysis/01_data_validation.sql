-- ================================
-- 01_data_validation.sql
-- ================================

-- Question 1:
-- Are there any orders marked as delivered but missing a delivery date?
SELECT count(*) AS Not_delivered
FROM orders AS t2
WHERE t2.order_delivered_customer_date IS NULL
  AND t2.order_status = 'delivered';

-- Insight:
-- 8 orders are marked as delivered but do not have a delivery timestamp recorded.

-- Implication:
-- These records represent true data inconsistencies and should be excluded
-- or corrected before performing delivery or fulfillment analysis.


-- Question 2:
-- How many orders were canceled or marked as unavailable?
SELECT count(*) AS Non_completed_orders
FROM orders AS t2
WHERE t2.order_status = 'unavailable'
   OR t2.order_status = 'canceled';

-- Insight:
-- Approximately 1.2k orders were either canceled or became unavailable.

-- Implication:
-- These orders represent non-completed transactions and should not be included
-- in revenue, delivery performance, or customer satisfaction analysis.


-- Question 3:
-- Are there orders without associated items or customers?
SELECT count(*) AS Invalid_order
FROM order_items AS t1
LEFT JOIN orders AS t2 ON t2.order_id = t1.order_id
LEFT JOIN customers AS t3 ON t3.customer_id = t2.customer_id
WHERE t2.order_id IS NULL
   OR t3.customer_id IS NULL;

-- Insight:
-- No order items were found without a valid order, and no orders were found
-- without an associated customer.

-- Implication:
-- The core relational integrity between orders, order items, and customers
-- appears to be intact, supporting reliable downstream analysis.
