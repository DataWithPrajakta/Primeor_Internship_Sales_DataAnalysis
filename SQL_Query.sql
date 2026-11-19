DROP TABLE IF EXISTS idata;

CREATE TABLE idata(
    order_id VARCHAR(50) NOT NULL,
    order_date DATE NOT NULL,
    ship_date DATE NOT NULL,
    year INTEGER NOT NULL,
    order_priority VARCHAR(50) NOT NULL,
    ship_mode VARCHAR(50) NOT NULL,
    customer_name VARCHAR(100) NOT NULL,
    segment VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    country VARCHAR(50) NOT NULL,
    market VARCHAR(50) NOT NULL,
    region VARCHAR(50) NOT NULL,
    product_id VARCHAR(50) NOT NULL,
    category VARCHAR(50) NOT NULL,
    sub_category VARCHAR(50) NOT NULL,
    product_name VARCHAR(200) NOT NULL,
    sales NUMERIC(10,2) NOT NULL,
    quantity INTEGER NOT NULL,
    discount NUMERIC NOT NULL,
    profit NUMERIC NOT NULL,
    shipping_cost NUMERIC NOT NULL
);

SELECT * FROM idata;

COPY idata(order_id, order_date, ship_date, year, order_priority, ship_mode, customer_name, segment, state, country, market, region, product_id, category, sub_category, product_name, sales, quantity, discount, profit, shipping_cost)
FROM 'D:/primeor internship/data-csv.csv'
WITH (
    FORMAT csv,
    HEADER,
    DELIMITER ','
);

SELECT product_name, SUM(profit) AS total_profit
FROM idata
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;


SELECT
    customer_name,
    SUM(sales) AS total_sales
FROM idata
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;


SELECT
    region,
    SUM(sales) AS total_sales
FROM idata
GROUP BY region
ORDER BY total_sales DESC;


SELECT
    category,
    AVG(profit) AS average_profit
FROM idata
GROUP BY category
ORDER BY average_profit DESC;


SELECT
    category,
    AVG(discount) AS average_discount
FROM idata
GROUP BY category
ORDER BY average_discount DESC
LIMIT 1;


SELECT
    order_id,
    customer_name,
    product_name,
    sales,
    profit
FROM idata
WHERE profit < 0
ORDER BY profit;



SELECT
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(sales) AS total_sales
FROM idata
GROUP BY EXTRACT(MONTH FROM order_date)
ORDER BY month;


SELECT
    market,
    SUM(sales) AS total_revenue
FROM idata
GROUP BY market
ORDER BY total_revenue DESC;


SELECT
    sub_category,
    SUM(sales) AS total_sales
FROM idata
GROUP BY sub_category
ORDER BY total_sales DESC
LIMIT 10;


SELECT
    ship_mode,
    COUNT(*) AS total_orders
FROM idata
GROUP BY ship_mode
ORDER BY total_orders DESC;