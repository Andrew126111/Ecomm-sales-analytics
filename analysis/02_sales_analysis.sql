-- ================================
-- 02_sales_analysis.sql
-- ================================
-- Question:
-- Insight:
-- Implication:

-- Question 1
--How much total revenue was generated?
SELECT SUM(order_items.price) AS Total_Revenue 
FROM order_items
LEFT JOIN orders ON orders.order_id = order_items.order_id
WHERE orders.order_status = 'delivered';
-- insights:
-- Implication

-- Question 2
-- How does the revenue change overtime (monthly)
SELECT DATE_TRUNC('month', order_purchase_timestamp),SUM(order_items.price) AS Monthly_revenue
FROM order_items
LEFT JOIN orders ON orders.order_id = order_items.order_id
GROUP BY orders.order_purchase_timestamp;
-- Insights:
-- Implications:

--Question 3
-- How much does the average customer spend per order?
SELECT SUM(order_items.price)/SUM(order_items.order_item_id) AS AOV
FROM order_items;
--Insights:
--Implications:
-- revenue / number of distinct orders

-- Question 4 Which categories generate the most revenue
