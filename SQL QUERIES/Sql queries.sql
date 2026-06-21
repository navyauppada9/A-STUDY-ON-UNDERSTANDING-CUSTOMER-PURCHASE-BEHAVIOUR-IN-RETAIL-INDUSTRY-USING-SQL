use customer_segmentation

1) Total revenue by product Category
Select product_category,
       SUM(total_amount) AS total_revenue
FROM retail_data
GROUP BY product_category
ORDER BY total_revenue DESC;                  


 2)	Average purchase amount by country:

SELECT country,
       ROUND(AVG(total_amount), 2) AS avg_purchase
FROM retail_data
GROUP BY country
ORDER BY avg_purchase DESC;


3)	Monthly revenue trend:

SELECT year, month,
       SUM(total_amount) AS monthly_revenue
FROM retail_data
GROUP BY year, month
ORDER BY year, month;


4)	Customer Segment performance:

SELECT customer_segment,
       COUNT(transaction_id) AS transactions,
       SUM(total_amount) AS revenue
FROM retail_data
GROUP BY customer_segment
ORDER BY revenue DESC;


5)	Shipping method preferences:

SELECT 
    shipping_method,
    COUNT(transaction_id) AS number_of_transactions,
    SUM(total_purchases) AS total_purchases
FROM 
    retail_data
GROUP BY 
    shipping_method;      


6)	Rating analysis by product type:

SELECT product_type,
       ROUND(AVG(ratings), 2) AS avg_rating,
       COUNT(transaction_id) AS review_count
FROM retail_data
GROUP BY product_type
ORDER BY avg_rating DESC;


7)	Revenue by payment method:

SELECT payment_method,
       COUNT(*) AS total_transactions,
       SUM(total_amount) AS total_revenue
FROM retail_data
GROUP BY payment_method
ORDER BY total_revenue DESC;


8)	Order status analysis:

SELECT order_status,
       COUNT(*) AS number_of_orders,
       ROUND(SUM(total_amount), 2) AS revenue_generated
FROM retail_data
GROUP BY order_status;


9)	Customer distribution by gender and product name:

SELECT 
    gender,
    product_type,
    COUNT(DISTINCT customer_id) AS unique_customers
FROM retail_data
GROUP BY gender, product_type
ORDER BY gender, unique_customers DESC;


10) Product brands by sales
SELECT 
    product_brand,
    SUM(total_amount) AS total_sales,
    COUNT(transaction_id) AS number_of_orders
FROM retail_data
GROUP BY product_brand
ORDER BY total_sales DESC;



