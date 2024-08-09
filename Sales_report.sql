/* The aim of the  Superstore sales SQL data analysis project is to provide insight of store's sales
 * and profit trends from 2014 to 2017 using SQL.
 * I esxplored the superstore sales data to provide answer to questions such as; sales and profit by
 * month,shipmode, segment,region categories and sub-category.
 * I also identified most profitable product, top customers and most ordered product.
 
/* What are the monthly sales, profit and quantity?
 * I used strftime() function to extract month from dates and sum() function to aggregates sales,
 * profit and quantity from orders as shown below.*/

SELECT
strftime('%Y-%m',order_date) AS order_month,
SUM(sales) AS total_monthly_sales,
SUM(profit) AS total_monthly_profit,
SUM(quantity) AS total_monthly_quantity 
FROM orders 
GROUP BY 
	strftime('%Y-%m',order_date)
ORDER BY 
	order_month;

/* What are the total sales and profit by different ship mode?
 * I used the sum() function to aggregate sales and profit from orders, then grouped result by shipmode. */
 
 SELECT 
	ship_mode,
	SUM(sales)  AS Total_sales,
	SUM(profit) AS total_profit
FROM 
orders 
 	GROUP BY 
 	ship_mode ;

/* What are the total sales and profit by differnt segments?
 * Sum() function was used to aggregate sales and profit from orders, before grouping by segment*/ 

SELECT
	segment,
	SUM(sales) AS Total_sales,
	SUM(profit) AS Total_profit
FROM orders o
	GROUP BY
	segment ;

/* What are the total sales and profit by different category and subcategories?
 * sum() function was used to aggregate sales and profit from orders, then grouped by category and subcategory to get the  total sales
 * and profit by different category and subcategory*/

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

/* What is the quantity for each region?
 * sum() function was used to aggregate quantity from orders, then grouped  result by region to get quantity for each region*/ 

SELECT 
	region,
	SUM(quantity) AS Total_quantity
FROM orders 
	GROUP BY
	region ;

/* What is the average discount for each product category?
 * I used the Average() function to get the average discount from orders, then grouped result by category to get the 
 * the average discount for each product category*/

SELECT 
	category,
	AVG(discount) AS Average_discount	
FROM
	orders  
	GROUP BY
	category;

/* What are the average sales and profit per order?
 * I used the round Average() function to get the average sales and profit, then grouped  result by order_id to get
 * the average sales and profit per order. */

SELECT 
	order_id,
	round(AVG(sales),2) AS Average_sales,
	round(AVG(profit),2) AS Average_profit
FROM 
orders 
	GROUP BY
	order_id ;


/* What is the most profotable product?
 * To get the most profitable product; I used sum() function to aggregate total product,then grouped result by product name and ordered
 * result by total product profit in descending order with a of  limit of 1.*/
 
SELECT 
	product_name,
	SUM(profit) AS total_product_profit
FROM 
orders 
	GROUP BY
	product_name 
ORDER BY 
	total_product_profit DESC 
LIMIT 1;

/* Who are the top five customers based on their total spending?*
 * I used the sum() function to aggregate the sales, then grouped result by customer id and customers name.
 * The total sales was ordered in descending order with a limit of 5, so as to provide the top five customers as needed.
 */

SELECT 
	customer_id,
	customer_name,
	SUM(sales) AS Total_sales
FROM
	orders 
GROUP BY
	customer_id,
	customer_name 
ORDER BY 
	Total_sales DESC  
LIMIT 5; 
	
/* How many orders were places in each year?
 * I used strftime() function to extract year from dates and count() function to count the total yearly orders .*/ 

SELECT
	strftime('%Y',order_date) AS Order_year,
	COUNT(order_id) AS Count_order_id
FROM 
	orders 
GROUP BY 
	strftime('%Y',order_date);

/* How many orders were returned?
 * I used count() function to count the returned orders*/

SELECT 
order_id ,
COUNT(returned) AS Count_returned
FROM 
	"returns";

/* Which product Category has the most orders?
 * I used sum() function to aggregate quantity, then i grouped by product category and ordered by total quantity  in descending
 * order to get product category that was most ordererd.*/

SELECT 
	SUM(quantity) AS Total_quantity,
	category,
	order_id 
FROM 
	orders o 
GROUP BY category 
ORDER BY Total_quantity DESC 
LIMIT 1;
	







	





	


