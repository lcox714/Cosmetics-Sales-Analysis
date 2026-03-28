--KPIs (Total Sales, Average Order Sale, Units Sold, Number of Customers)
SELECT sum(total_amount) as total_sales FROM [Cosmetics_DB].[dbo].[cosmetics_sales_dataset]

SELECT avg(total_amount) as average_sales FROM [Cosmetics_DB].[dbo].[cosmetics_sales_dataset]

SELECT sum(quantity) as units_sold FROM [Cosmetics_DB].[dbo].[cosmetics_sales_dataset]

SELECT count(distinct customer_id) AS number_of_customers FROM [Cosmetics_DB].[dbo].[cosmetics_sales_dataset]


--Monthly Sales
SELECT sum(total_amount) as monthly_sales FROM [Cosmetics_DB].[dbo].[cosmetics_sales_dataset]
GROUP BY MONTH(order_date)
ORDER BY MONTH(order_date)

--Top 10 Products Sold
SELECT TOP 10 product_name, sum(total_amount) as product_sales FROM [Cosmetics_DB].[dbo].[cosmetics_sales_dataset]
GROUP BY product_name
ORDER BY sum(total_amount) DESC

--Total Sales by Category
SELECT category, sum(total_amount) as category_sales FROM [Cosmetics_DB].[dbo].[cosmetics_sales_dataset]
GROUP BY category
ORDER BY sum(total_amount) DESC