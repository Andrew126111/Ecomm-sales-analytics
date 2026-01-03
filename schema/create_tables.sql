-- =========================================
-- Raw table creation for Olist dataset
-- =========================================

DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS order_items;

CREATE TABLE customers (
  customer_id TEXT PRIMARY KEY,
  customer_unique_id TEXT,
  customer_zip_code_prefix TEXT,
  customer_city TEXT,
  customer_state TEXT
);

CREATE TABLE orders (
  order_id TEXT PRIMARY KEY,
  customer_id TEXT,
  order_status TEXT,
  order_purchase_timestamp TIMESTAMP,
  order_approved_at TIMESTAMP,
  order_delivered_carrier_date TIMESTAMP,
  order_delivered_customer_date TIMESTAMP,
  order_estimated_delivery_date TIMESTAMP
);

CREATE TABLE order_items (
  order_id TEXT,
  order_item_id INTEGER,
  product_id TEXT,
  seller_id TEXT,
  shipping_limit_date TIMESTAMP,
  price NUMERIC,
  freight_value NUMERIC
);
