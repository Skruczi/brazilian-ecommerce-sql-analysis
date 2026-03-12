# E-Commerce SQL Analysis

This project explores and analyzes a Brazilian e-commerce dataset using SQL.

The goal is to practice relational database querying, data exploration, and business-oriented analysis using real-world transactional data.

The analysis focuses on understanding sales performance, customer behavior, delivery performance, and seller distribution.

---

# Dataset

Dataset used in this project:

Brazilian E-Commerce Public Dataset by Olist

Source  
https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

The dataset contains information about:

- orders
- customers
- products
- sellers
- payments
- reviews
- geolocation data

It represents real e-commerce transactions from a Brazilian marketplace.

---

# Database Schema

The database was created using SQL tables based on the provided CSV files.

Main entities include:

- customers – customer information and location
- orders – order lifecycle timestamps and status
- order_items – individual products within orders
- products – product metadata and categories
- sellers – seller location and identification
- order_payments – payment methods and amounts
- order_reviews – customer feedback and review scores
- geolocation – geographic information based on zip codes

---

# Project Structure
```
ecommerce-sql-analysis
│
├── table_creation.sql
│
└── sql
    ├── 01_exploration.sql
    ├── 02_sales_analysis.sql
    ├── 03_delivery_analysis.sql
    ├── 04_customer_and_seller_analysis.sql
    └── 05_reviews_analysis.sql
```
table_creation.sql  
Contains SQL statements used to create the database schema.

SQL analysis files

- 01_exploration.sql – initial dataset exploration  
- 02_sales_analysis.sql – revenue and payment analysis  
- 03_delivery_analysis.sql – delivery performance and order timing  
- 04_customer_and_seller_analysis.sql – geographic distribution of customers and sellers  
- 05_reviews_analysis.sql – customer review analysis  

---

# Key Business Questions

The project explores questions such as:

- What are the highest priced products?
- Which product categories generate the most revenue?
- Who are the top-performing sellers?
- What payment methods are most commonly used?
- What is the average delivery time?
- Does delivery time affect customer review scores?
- How are sellers and customers distributed geographically?

---

# Technologies Used

- SQL
- relational database concepts
- data exploration and aggregation
- JOIN operations
- business-oriented query design

---

# Purpose of the Project

This project was created as part of learning data engineering and SQL analysis.

It focuses on developing practical skills in:

- working with relational datasets
- joining multiple tables
- performing business-oriented analysis
- structuring SQL projects for GitHub portfolios

---

# Author

SQL practice project focused on data analysis and data engineering fundamentals.
