Question 1

SELECT 
strftime('%Y-%m',order_date), sales, profit, quantity
FROM orders o ;

Question 2

SELECT 
	ship_mode,
	SUM(sales)  AS Total_sales,
	SUM(profit) AS total_profit
FROM 
orders 
 	GROUP BY 
 	ship_mode ;

Question 3

SELECT
	segment,
	SUM(sales) AS Total_sales,
	SUM(profit) AS Total_profit
FROM orders o
	GROUP BY
	segment ;

Question 4

SELECT 
	category,
	sub_category,
	SUM(sales)  AS Total_sales,
	SUM(profit) AS total_profit
FROM 
orders  
	GROUP BY 
	category,
	sub_category;

Question 5

SELECT 
	region,
	SUM(quantity) AS Total_quantity
FROM orders 
	GROUP BY
	region ;

Question 6 

SELECT 
	AVG(discount),
	category
FROM
	orders  
	GROUP BY
	category;

Question 7

SELECT 
	AVG(sales),
	AVG(profit),
	order_id
FROM 
orders 
	GROUP  BY
	order_id ;


Question 8

SELECT 
	product_name,
	profit 
FROM 
orders 
	GROUP BY
	profit 
HAVING profit> 8000;

Question 9


SELECT 
	SUM(sales) AS Total_sales,
	COUNT(quantity) AS Quantity_count,
	order_id,
	order_date,
	customer_name
FROM
	orders o 
GROUP BY customer_name 
ORDER BY 
Quantity_count DESC  
LIMIT 5; 
	
Question 10


SELECT
	strftime('%Y',order_date),
	order_id
FROM 
	orders o ;

Question 11


SELECT 
order_id ,
COUNT(returned)
FROM 
	"returns" r ;

	
Question 12

SELECT 
	SUM(Quantity) AS Total_quantity,
	category,
	order_id 
FROM 
	orders o 
	GROUP BY category;
	







	





	


