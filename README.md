# Brazilian E-Commerce Analytics (SQL + PostgreSQL)

## Overview
This project analyzes real-world e-commerce data from the Olist marketplace in Brazil using **PostgreSQL**.  
The goal is to evaluate business performance, customer behavior, product trends, and operational efficiency through **SQL-based analysis**.

The dataset contains transactional data including orders, customers, products, sellers, payments, reviews, and delivery information, allowing for realistic, multi-table analytics similar to production systems.

---

## Dataset
**Source:** Brazilian E-Commerce Public Dataset by Olist (Kaggle)  
**Time Period:** 2016 – 2018  
**Size:** ~100,000 orders across multiple relational tables

Raw CSV files are not included in this repository due to size. Data was loaded locally into PostgreSQL.

---

## Tools & Technologies
- PostgreSQL
- SQL (JOINs, aggregations, CTEs, window functions)
- pgAdmin / psql
- Git & GitHub

---

## Database Schema
The project uses a normalized relational schema based on the original dataset structure.

Main tables include:
- `customers`
- `orders`
- `order_items`
- `products`
- `sellers`
- `payments`
- `reviews`
- `geolocation`
- `product_category_translation`

Each table is connected through primary and foreign keys to enable relational analysis.

---

## Business Questions Answered

### Data Quality & Validation
- Are there missing or invalid orders, payments, or products?
- How many orders were canceled or unavailable?
- Are there orders without associated items or customers?

### Core Business Performance
- What is total revenue and order volume?
- How does revenue change over time?
- What is the average order value (AOV)?

### Customer Analytics
- How many customers are repeat buyers?
- Who are the most valuable customers?
- What is customer lifetime value (CLV)?
- Do repeat customers spend more per order?

### Product & Category Performance
- Which product categories generate the most revenue?
- Which products sell the most units?
- What percentage of revenue comes from top categories?

### Seller & Marketplace Analysis
- Which sellers generate the most revenue?
- How concentrated is seller performance?
- How does seller location affect sales?

### Payments & Pricing
- What payment methods are most common?
- Do installment payments correlate with higher order values?

### Delivery & Customer Experience
- What is the average delivery time?
- How does delivery time affect review scores?
- Which regions experience the fastest deliveries?

### Geographic Insights
- Which Brazilian states generate the most revenue?
- How does customer behavior vary by region?

---


---

## Key Skills Demonstrated
- Relational database design
- Complex SQL joins across multiple tables
- Aggregations and window functions
- Business-focused analytical thinking
- Data quality validation
- Translating data into actionable insights

---

## Notes
This project focuses on **SQL-based analysis** rather than visualization or dashboards.  
The emphasis is on **query clarity, correctness, and business relevance**, mirroring real-world analytics workflows.

---

## Future Improvements
- Add visualizations using Python or BI tools
- Build a FastAPI backend to expose analytics endpoints
- Optimize queries with indexing and query plans
- Extend analysis to customer segmentation models

