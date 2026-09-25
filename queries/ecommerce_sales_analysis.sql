-- ============================================================
-- E-COMMERCE SALES ANALYSIS PROJECT
-- Database: ecommerce_sales
-- Tool: MySQL Workbench
-- ============================================================


-- ============================================================
-- 1. DATABASE
-- ============================================================

USE ecommerce_sales;


-- ============================================================
-- 2. TABLE CREATION
-- ============================================================

-- 2.1 Customers Table

CREATE TABLE customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    city VARCHAR(50)
);


-- 2.2 Products Table

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    price DECIMAL(10,2) NOT NULL
);


-- 2.3 Orders Table

CREATE TABLE orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    order_date DATE NOT NULL,

    FOREIGN KEY (customer_id)
        REFERENCES customers(customer_id)
);


-- 2.4 Order Details Table

CREATE TABLE order_details (
    order_detail_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,

    FOREIGN KEY (order_id)
        REFERENCES orders(order_id),

    FOREIGN KEY (product_id)
        REFERENCES products(product_id)
);


-- ============================================================
-- 3. INSERT PRODUCT DATA
-- Total Products: 80
-- ============================================================

INSERT INTO products (product_name, category, price)
VALUES

-- Electronics
('Laptop Pro 15', 'Electronics', 65000.00),
('Wireless Mouse', 'Electronics', 1200.00),
('Mechanical Keyboard', 'Electronics', 3500.00),
('Bluetooth Speaker', 'Electronics', 2800.00),
('Wireless Headphones', 'Electronics', 4500.00),
('Smartphone X1', 'Electronics', 32000.00),
('Smartwatch Series 5', 'Electronics', 8500.00),
('USB-C Charger', 'Electronics', 1500.00),
('Power Bank 20000mAh', 'Electronics', 2200.00),
('Webcam HD', 'Electronics', 3000.00),

-- Clothing
('Men Cotton T-Shirt', 'Clothing', 899.00),
('Women Casual T-Shirt', 'Clothing', 799.00),
('Men Blue Jeans', 'Clothing', 1999.00),
('Women Denim Jeans', 'Clothing', 2199.00),
('Formal Shirt', 'Clothing', 1499.00),
('Hooded Sweatshirt', 'Clothing', 1799.00),
('Summer Dress', 'Clothing', 2499.00),
('Winter Jacket', 'Clothing', 3999.00),
('Track Pants', 'Clothing', 1299.00),
('Cotton Shorts', 'Clothing', 899.00),

-- Home & Kitchen
('Non Stick Frying Pan', 'Home & Kitchen', 1299.00),
('Stainless Steel Bottle', 'Home & Kitchen', 699.00),
('Electric Kettle', 'Home & Kitchen', 1799.00),
('Mixer Grinder', 'Home & Kitchen', 3499.00),
('Dinner Set', 'Home & Kitchen', 2499.00),
('Coffee Maker', 'Home & Kitchen', 3999.00),
('Kitchen Knife Set', 'Home & Kitchen', 1499.00),
('Storage Container Set', 'Home & Kitchen', 999.00),
('Air Fryer', 'Home & Kitchen', 6999.00),
('Water Purifier', 'Home & Kitchen', 8999.00),

-- Sports
('Running Shoes', 'Sports', 3499.00),
('Cricket Bat', 'Sports', 4999.00),
('Football', 'Sports', 999.00),
('Badminton Racket', 'Sports', 1799.00),
('Yoga Mat', 'Sports', 799.00),
('Gym Dumbbells', 'Sports', 2499.00),
('Tennis Racket', 'Sports', 2999.00),
('Cycling Helmet', 'Sports', 1999.00),
('Skipping Rope', 'Sports', 499.00),
('Sports Water Bottle', 'Sports', 699.00),

-- Books
('SQL for Beginners', 'Books', 599.00),
('Python Programming', 'Books', 799.00),
('Data Science Handbook', 'Books', 999.00),
('Machine Learning Basics', 'Books', 899.00),
('Business Analytics', 'Books', 749.00),
('Digital Marketing Guide', 'Books', 649.00),
('Financial Management', 'Books', 899.00),
('The Psychology of Money', 'Books', 499.00),
('Atomic Habits', 'Books', 599.00),
('Clean Code', 'Books', 899.00),

-- Beauty
('Face Wash', 'Beauty', 399.00),
('Moisturizer', 'Beauty', 599.00),
('Sunscreen SPF 50', 'Beauty', 699.00),
('Shampoo', 'Beauty', 499.00),
('Conditioner', 'Beauty', 449.00),
('Face Serum', 'Beauty', 899.00),
('Body Lotion', 'Beauty', 399.00),
('Lip Balm', 'Beauty', 199.00),
('Perfume', 'Beauty', 1499.00),
('Hair Dryer', 'Beauty', 2299.00),

-- Grocery
('Basmati Rice 5kg', 'Grocery', 699.00),
('Wheat Flour 5kg', 'Grocery', 399.00),
('Cooking Oil 1L', 'Grocery', 179.00),
('Green Tea', 'Grocery', 299.00),
('Coffee 500g', 'Grocery', 449.00),
('Breakfast Cereal', 'Grocery', 349.00),
('Peanut Butter', 'Grocery', 299.00),
('Honey 500g', 'Grocery', 399.00),
('Mixed Dry Fruits', 'Grocery', 899.00),
('Dark Chocolate', 'Grocery', 249.00),

-- Furniture
('Office Chair', 'Furniture', 8500.00),
('Study Table', 'Furniture', 6500.00),
('Bookshelf', 'Furniture', 4999.00),
('Computer Desk', 'Furniture', 7999.00),
('Dining Chair', 'Furniture', 2999.00),
('Coffee Table', 'Furniture', 4499.00),
('Bedside Table', 'Furniture', 3499.00),
('Shoe Rack', 'Furniture', 2999.00),
('TV Stand', 'Furniture', 5999.00),
('Wardrobe', 'Furniture', 12999.00),

-- Footwear
('Men Running Shoes', 'Footwear', 2999.00),
('Women Running Shoes', 'Footwear', 3199.00),
('Casual Sneakers', 'Footwear', 2499.00),
('Formal Shoes', 'Footwear', 3499.00),
('Sports Shoes', 'Footwear', 2799.00),
('Women Sandals', 'Footwear', 1599.00),
('Men Sandals', 'Footwear', 1399.00),
('Flip Flops', 'Footwear', 499.00),
('Hiking Boots', 'Footwear', 4499.00),
('Running Slippers', 'Footwear', 799.00),

-- Accessories
('Leather Wallet', 'Accessories', 999.00),
('Sunglasses', 'Accessories', 1499.00),
('Leather Belt', 'Accessories', 899.00),
('Backpack', 'Accessories', 1999.00),
('Travel Bag', 'Accessories', 2499.00),
('Wrist Watch', 'Accessories', 3999.00),
('Cap', 'Accessories', 499.00),
('Scarf', 'Accessories', 699.00),
('Keychain', 'Accessories', 199.00),
('Laptop Bag', 'Accessories', 1799.00);


-- ============================================================
-- 4. VERIFY PRODUCT DATA
-- ============================================================

SELECT COUNT(*) AS total_products
FROM products;

SELECT *
FROM products
WHERE category = 'Electronics';


-- ============================================================
-- 5. INSERT CUSTOMER DATA
-- Total Customers: 5,000
-- ============================================================

SET SESSION cte_max_recursion_depth = 5000;

INSERT INTO customers (customer_name, email, city)

WITH RECURSIVE numbers AS (
    SELECT 1 AS n

    UNION ALL

    SELECT n + 1
    FROM numbers
    WHERE n < 5000
)

SELECT
    CONCAT('Customer ', n),
    CONCAT('customer', n, '@gmail.com'),

    CASE MOD(n, 10)
        WHEN 0 THEN 'Delhi'
        WHEN 1 THEN 'Mumbai'
        WHEN 2 THEN 'Bangalore'
        WHEN 3 THEN 'Pune'
        WHEN 4 THEN 'Hyderabad'
        WHEN 5 THEN 'Chennai'
        WHEN 6 THEN 'Kolkata'
        WHEN 7 THEN 'Jaipur'
        WHEN 8 THEN 'Ahmedabad'
        ELSE 'Lucknow'
    END

FROM numbers;


-- Verify customers

SELECT COUNT(*) AS total_customers
FROM customers;


-- ============================================================
-- 6. INSERT ORDER DATA
-- Total Orders: 10,000
-- ============================================================

SET SESSION cte_max_recursion_depth = 10000;

INSERT INTO orders (customer_id, order_date)

WITH RECURSIVE numbers AS (
    SELECT 1 AS n

    UNION ALL

    SELECT n + 1
    FROM numbers
    WHERE n < 10000
)

SELECT
    FLOOR(1 + RAND() * 1000) AS customer_id,

    DATE_ADD(
        '2025-01-01',
        INTERVAL FLOOR(RAND() * 365) DAY
    ) AS order_date

FROM numbers;


-- Verify orders

SELECT COUNT(*) AS total_orders
FROM orders;


-- ============================================================
-- 7. INSERT ORDER DETAILS
-- ============================================================

INSERT INTO order_details (order_id, product_id, quantity)

SELECT
    order_id,
    FLOOR(1 + RAND() * 80) AS product_id,
    FLOOR(1 + RAND() * 5) AS quantity

FROM orders;


-- Verify order details

SELECT COUNT(*) AS total_order_details
FROM order_details;


-- ============================================================
-- 8. DATA VALIDATION
-- ============================================================


-- 8.1 Check for invalid customer references

SELECT COUNT(*) AS invalid_orders

FROM orders o

LEFT JOIN customers c
    ON o.customer_id = c.customer_id

WHERE c.customer_id IS NULL;


-- 8.2 Check for invalid product references

SELECT COUNT(*) AS invalid_products

FROM order_details od

LEFT JOIN products p
    ON od.product_id = p.product_id

WHERE p.product_id IS NULL;


-- 8.3 Check for duplicate order IDs

SELECT
    order_id,
    COUNT(*) AS order_count

FROM orders

GROUP BY order_id

HAVING COUNT(*) > 1;


-- ============================================================
-- 9. BASIC SALES ANALYSIS
-- ============================================================


-- 9.1 Join Complete Data

SELECT
    o.order_id,
    c.customer_name,
    p.product_name,
    p.category,
    p.price,
    od.quantity,
    o.order_date

FROM orders o

JOIN customers c
    ON o.customer_id = c.customer_id

JOIN order_details od
    ON o.order_id = od.order_id

JOIN products p
    ON od.product_id = p.product_id

LIMIT 10;


-- 9.2 Total Revenue

SELECT
    SUM(p.price * od.quantity) AS total_revenue

FROM order_details od

JOIN products p
    ON od.product_id = p.product_id;


-- 9.3 Top 10 Best-Selling Products

SELECT
    p.product_name,
    SUM(od.quantity) AS total_quantity_sold

FROM order_details od

JOIN products p
    ON od.product_id = p.product_id

GROUP BY
    p.product_id,
    p.product_name

ORDER BY total_quantity_sold DESC

LIMIT 10;


-- 9.4 Revenue by Category

SELECT
    p.category,
    SUM(p.price * od.quantity) AS total_revenue

FROM order_details od

JOIN products p
    ON od.product_id = p.product_id

GROUP BY p.category

ORDER BY total_revenue DESC;


-- 9.5 Top 10 Customers by Spending

SELECT
    c.customer_id,
    c.customer_name,
    SUM(p.price * od.quantity) AS total_spent

FROM customers c

JOIN orders o
    ON c.customer_id = o.customer_id

JOIN order_details od
    ON o.order_id = od.order_id

JOIN products p
    ON od.product_id = p.product_id

GROUP BY
    c.customer_id,
    c.customer_name

ORDER BY total_spent DESC

LIMIT 10;


-- 9.6 Revenue by City

SELECT
    c.city,
    SUM(p.price * od.quantity) AS total_revenue

FROM customers c

JOIN orders o
    ON c.customer_id = o.customer_id

JOIN order_details od
    ON o.order_id = od.order_id

JOIN products p
    ON od.product_id = p.product_id

GROUP BY c.city

ORDER BY total_revenue DESC;


-- 9.7 Monthly Revenue

SELECT
    MONTH(o.order_date) AS month_number,
    SUM(p.price * od.quantity) AS total_revenue

FROM orders o

JOIN order_details od
    ON o.order_id = od.order_id

JOIN products p
    ON od.product_id = p.product_id

GROUP BY MONTH(o.order_date)

ORDER BY month_number;


-- 9.8 Average Order Value

SELECT
    AVG(order_total) AS average_order_value

FROM (

    SELECT
        o.order_id,
        SUM(p.price * od.quantity) AS order_total

    FROM orders o

    JOIN order_details od
        ON o.order_id = od.order_id

    JOIN products p
        ON od.product_id = p.product_id

    GROUP BY o.order_id

) AS order_sales;


-- 9.9 Customers Who Never Placed an Order

SELECT
    c.customer_id,
    c.customer_name,
    c.city

FROM customers c

LEFT JOIN orders o
    ON c.customer_id = o.customer_id

WHERE o.order_id IS NULL;


-- 9.10 Products That Were Never Sold

SELECT
    p.product_id,
    p.product_name,
    p.category,
    p.price

FROM products p

LEFT JOIN order_details od
    ON p.product_id = od.product_id

WHERE od.product_id IS NULL;


-- 9.11 Total Orders by Month

SELECT
    MONTH(order_date) AS month_number,
    COUNT(order_id) AS total_orders

FROM orders

GROUP BY MONTH(order_date)

ORDER BY month_number;


-- 9.12 Highest-Value Order

SELECT
    o.order_id,
    c.customer_name,
    SUM(p.price * od.quantity) AS order_value

FROM orders o

JOIN customers c
    ON o.customer_id = c.customer_id

JOIN order_details od
    ON o.order_id = od.order_id

JOIN products p
    ON od.product_id = p.product_id

GROUP BY
    o.order_id,
    c.customer_name

ORDER BY order_value DESC

LIMIT 1;


-- 9.13 Category Performance Summary

SELECT
    p.category,
    COUNT(DISTINCT p.product_id) AS number_of_products,
    SUM(od.quantity) AS total_units_sold,
    SUM(p.price * od.quantity) AS total_revenue

FROM products p

JOIN order_details od
    ON p.product_id = od.product_id

GROUP BY p.category

ORDER BY total_revenue DESC;


-- 9.14 Top 10 Customers by Number of Orders

SELECT
    c.customer_id,
    c.customer_name,
    COUNT(o.order_id) AS total_orders

FROM customers c

JOIN orders o
    ON c.customer_id = o.customer_id

GROUP BY
    c.customer_id,
    c.customer_name

ORDER BY total_orders DESC

LIMIT 10;


-- 9.15 Revenue by City with Customers and Orders

SELECT
    c.city,
    COUNT(DISTINCT c.customer_id) AS total_customers,
    COUNT(DISTINCT o.order_id) AS total_orders,
    SUM(p.price * od.quantity) AS total_revenue

FROM customers c

JOIN orders o
    ON c.customer_id = o.customer_id

JOIN order_details od
    ON o.order_id = od.order_id

JOIN products p
    ON od.product_id = p.product_id

GROUP BY c.city

ORDER BY total_revenue DESC;


-- 9.16 Repeat Customer Analysis

SELECT
    COUNT(*) AS repeat_customers

FROM (

    SELECT
        customer_id,
        COUNT(order_id) AS total_orders

    FROM orders

    GROUP BY customer_id

    HAVING COUNT(order_id) > 1

) AS customer_orders;


-- 9.17 Average Quantity per Order

SELECT
    ROUND(AVG(total_quantity), 2)
        AS average_quantity_per_order

FROM (

    SELECT
        o.order_id,
        SUM(od.quantity) AS total_quantity

    FROM orders o

    JOIN order_details od
        ON o.order_id = od.order_id

    GROUP BY o.order_id

) AS order_quantity;


-- 9.18 Most Popular Category by Units Sold

SELECT
    p.category,
    SUM(od.quantity) AS total_units_sold

FROM products p

JOIN order_details od
    ON p.product_id = od.product_id

GROUP BY p.category

ORDER BY total_units_sold DESC

LIMIT 1;


-- ============================================================
-- 10. ADVANCED SQL ANALYSIS
-- ============================================================


-- 10.1 Product Price Categorization using CASE

SELECT
    product_name,
    category,
    price,

    CASE
        WHEN price < 1000 THEN 'Low Price'
        WHEN price BETWEEN 1000 AND 10000 THEN 'Medium Price'
        ELSE 'High Price'
    END AS price_category

FROM products

ORDER BY price DESC;


-- 10.2 Customer Segmentation using CASE and COALESCE

SELECT
    customer_id,
    customer_name,
    total_spent,

    CASE
        WHEN total_spent >= 100000 THEN 'High Spender'
        WHEN total_spent >= 50000 THEN 'Medium Spender'
        ELSE 'Low Spender'
    END AS customer_segment

FROM (

    SELECT
        c.customer_id,
        c.customer_name,

        COALESCE(
            SUM(p.price * od.quantity),
            0
        ) AS total_spent

    FROM customers c

    LEFT JOIN orders o
        ON c.customer_id = o.customer_id

    LEFT JOIN order_details od
        ON o.order_id = od.order_id

    LEFT JOIN products p
        ON od.product_id = p.product_id

    GROUP BY
        c.customer_id,
        c.customer_name

) AS customer_sales

ORDER BY total_spent DESC;


-- 10.3 Rank Products by Revenue

SELECT
    product_name,
    category,
    total_revenue,

    RANK() OVER (
        ORDER BY total_revenue DESC
    ) AS revenue_rank

FROM (

    SELECT
        p.product_id,
        p.product_name,
        p.category,
        SUM(p.price * od.quantity) AS total_revenue

    FROM products p

    JOIN order_details od
        ON p.product_id = od.product_id

    GROUP BY
        p.product_id,
        p.product_name,
        p.category

) AS product_sales

ORDER BY revenue_rank;


-- 10.4 Top Product in Each Category

SELECT
    product_name,
    category,
    total_revenue,
    revenue_rank

FROM (

    SELECT
        product_name,
        category,
        total_revenue,

        RANK() OVER (
            PARTITION BY category
            ORDER BY total_revenue DESC
        ) AS revenue_rank

    FROM (

        SELECT
            p.product_id,
            p.product_name,
            p.category,
            SUM(p.price * od.quantity) AS total_revenue

        FROM products p

        JOIN order_details od
            ON p.product_id = od.product_id

        GROUP BY
            p.product_id,
            p.product_name,
            p.category

    ) AS product_sales

) AS ranked_products

WHERE revenue_rank = 1

ORDER BY category;


-- ============================================================
-- 11. PRESENTATION-READY ANALYSIS
-- ============================================================


-- 11.1 Monthly Revenue with Month Name

SELECT
    MONTHNAME(o.order_date) AS month_name,
    MONTH(o.order_date) AS month_number,
    SUM(p.price * od.quantity) AS total_revenue

FROM orders o

JOIN order_details od
    ON o.order_id = od.order_id

JOIN products p
    ON od.product_id = p.product_id

GROUP BY
    MONTH(o.order_date),
    MONTHNAME(o.order_date)

ORDER BY month_number;


-- 11.2 Category Performance Summary

SELECT
    p.category,
    COUNT(DISTINCT p.product_id) AS total_products,
    SUM(od.quantity) AS units_sold,
    SUM(p.price * od.quantity) AS total_revenue,
    ROUND(AVG(p.price), 2) AS average_product_price

FROM products p

JOIN order_details od
    ON p.product_id = od.product_id

GROUP BY p.category

ORDER BY total_revenue DESC;


-- ============================================================
-- END OF PROJECT
-- ============================================================