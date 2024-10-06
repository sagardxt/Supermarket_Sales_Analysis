CREATE DATABASE supermarket_analysis
USE supermarket_analysis

SELECT * FROM [supermarket_sales ]

SELECT Branch, COUNT(Branch) AS total_branches
FROM [supermarket_sales ]
GROUP BY Branch

SELECT Product_line, COUNT(Quantity) AS total_products
FROM [supermarket_sales ]
GROUP BY Product_line

SELECT Payment,COUNT(Payment) AS payment_mode
FROM [supermarket_sales ]
GROUP BY Payment

SELECT Customer_type,COUNT(Customer_type) AS Category
FROM [supermarket_sales ]
GROUP BY Customer_type

SELECT Gender,Product_line,COUNT(Product_line) AS product_quantities
FROM [supermarket_sales ]
GROUP BY Gender,Product_line

SELECT City,Product_line,COUNT(Quantity) AS total
FROM [supermarket_sales ]
GROUP BY City,Product_line

SELECT Branch,Customer_type,Product_line,AVG(gross_income) as avg_Gross_income
FROM [supermarket_sales ]
GROUP BY Branch,Product_line,Customer_type

SELECT Product_line,AVG(Unit_price) AS avg_unit_price
FROM [supermarket_sales ]
GROUP BY Product_line

SELECT City,Customer_type,SUM(Total) AS total
FROM [supermarket_sales ]
GROUP BY City,Customer_type

SELECT YEAR(Date), SUM(Total) AS TOTAL 
FROM [supermarket_sales ]
GROUP BY YEAR(Date)
ORDER BY YEAR(Date)

SELECT MONTH(Date) AS Month_no,SUM(Total) AS total
FROM [supermarket_sales ]
GROUP BY MONTH(Date)
ORDER BY Month_no

SELECT Product_line,AVG(Rating) AS RATING
FROM [supermarket_sales ]
GROUP BY Product_line

SELECT Product_line,AVG(gross_margin_percentage) AS gross_margin
FROM [supermarket_sales ]
GROUP BY Product_line

SELECT Product_line,
       SUM(Total) AS TOTAL_SALES,
     RANK() OVER (ORDER BY SUM(Total) DESC) AS SALES_RANK
FROM [supermarket_sales ]
GROUP BY Product_line

SELECT City,
      SUM(Total) AS TOTAL_SALES,
	  RANK() OVER (ORDER BY SUM(Total) DESC) AS CITY_RANK
FROM [supermarket_sales ]
GROUP BY City

SELECT Product_line,COUNT(Tax_5) AS Total_tax_on_each_category
FROM [supermarket_sales ]
GROUP BY Product_line

SELECT Payment,
       COUNT(Tax_5) AS total_tax,
	   RANK() OVER (ORDER BY COUNT(Tax_5) DESC) AS TAX_rank
FROM [supermarket_sales ]
GROUP BY Payment

SELECT Gender,COUNT(Tax_5) most_pay_tax
FROM [supermarket_sales ]
GROUP BY Gender

SELECT Branch,COUNT(Branch) AS TOTAL,Product_line,MAX(Tax_5) AS MAXIMUM_TAX
FROM [supermarket_sales ]
GROUP BY Branch,Product_line

SELECT MONTH(Date) AS MONTH_NUMBER,SUM(Total) AS TOTAL 
FROM [supermarket_sales ]
GROUP BY MONTH(Date)
ORDER BY MONTH(Date)

SELECT Product_line,MAX(Rating) AS max_ratings
FROM [supermarket_sales ]
GROUP BY Product_line

SELECT Product_line,MIN(Tax_5) AS minimum_tax,MAX(Rating) AS maximum_rating,Unit_price
FROM [supermarket_sales ]
GROUP BY Product_line,Unit_price

SELECT DISTINCT *
FROM [supermarket_sales ]

SELECT Product_line,MIN(Unit_price) AS minimum_price,MIN(Tax_5) AS minimum_tax,MIN(Rating) AS MIN_Rating
FROM [supermarket_sales ]
GROUP BY Product_line,Unit_price,Tax_5

SELECT Product_line,COUNT(Quantity) AS total_quatity
FROM [supermarket_sales ]
GROUP BY Product_line

SELECT Product_line,DAY(Date) AS date,DATEPART(HOUR,Time) AS hour_time,DATEPART(MINUTE,Time) AS minute_time
FROM [supermarket_sales ]


