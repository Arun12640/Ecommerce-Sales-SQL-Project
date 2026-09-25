# E-Commerce Sales Analysis using SQL

## Project Overview

This project analyzes e-commerce sales data using SQL and MySQL.

The project focuses on extracting useful business insights such as total revenue, top-selling products, customer spending, category performance, and monthly sales trends.
## Tools & Technologies

- MySQL
- MySQL Workbench
- SQL

## Dataset

The project contains simulated e-commerce data:

- 5,000 customers
- 80 products
- 10,000 orders
- 10,000 order details
- Order data from 2025
## Database Structure

The project uses four main tables:

- `customers` — stores customer information
- `products` — stores product information
- `orders` — stores order information
- `order_details` — stores products and quantities associated with each order

### Table Relationships

customers → orders → order_details ← products
## SQL Analysis Performed

The project includes SQL analysis such as:

- Total revenue calculation
- Top 10 best-selling products
- Revenue by product category
- Top customers by spending
- Revenue by city
- Monthly revenue analysis
- Average order value
- Customers who never placed an order
- Products that were never sold
- Highest-value order
- Repeat customer analysis
- Customer segmentation
- Product revenue ranking
- Top product in each category
- Category performance analysis



## SQL Concepts Used

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- HAVING
- Aggregate Functions
- JOIN
- LEFT JOIN
- CASE
- COALESCE
- Subqueries
- Common Table Expressions (CTEs)
- Window Functions
- RANK()
- PARTITION BY
- LIMIT



## Key Business Questions

This project answers questions such as:

1. What is the total revenue?
2. Which products sell the most?
3. Which categories generate the highest revenue?
4. Who are the top-spending customers?
5. Which cities generate the most revenue?
6. How does revenue change month by month?
7. What is the average order value?
8. Which customers have never placed an order?
9. Which products have never been sold?
10. Which order has the highest value?


## Project Objective

The objective of this project is to practice SQL and demonstrate how SQL can be used to analyze business data and generate meaningful insights for decision-making.


## Project Structure

```text
Ecommerce-Sales-SQL-Project
│
├── queries
│   └── ecommerce_sales_analysis.sql
│
├── database
│
├── screenshots
│
└── README.md




## Author

**Arun**

B.Tech — Artificial Intelligence & Data Science