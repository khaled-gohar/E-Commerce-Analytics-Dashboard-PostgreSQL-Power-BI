--Retrieve the total sales for each product category = nuber of order_id per product category

SELECT c.product_category_name_english,COUNT(o.order_id) AS Total_sales
FROM [dbo].[Orders] o
JOIN [dbo].[Order Items] oi ON o.order_id = oi.order_id
JOIN [dbo].[Products] p ON oi.product_id = p.product_id
JOIN Categories c ON p.product_category_name = c.product_category_name
GROUP BY c.product_category_name_english
ORDER BY Total_sales DESC;



--Identify customers who made purchases in the last month. the last month for this dataset

SELECT customer_id
FROM [dbo].[Orders]
WHERE CONVERT(DATE,order_purchase_timestamp) <= (SELECT MAX(order_purchase_timestamp) FROM [dbo].[Orders] ) 
AND 
CONVERT(DATE,order_purchase_timestamp) >=  (SELECT DATEADD(MONTH,-1,MAX(order_purchase_timestamp)) FROM [dbo].[Orders] ) 
ORDER BY order_purchase_timestamp DESC;



--Calculate the average order value.
SELECT ROUND(AVG(payment_value),0) AS average_order_value
FROM [dbo].[Order Payments]




