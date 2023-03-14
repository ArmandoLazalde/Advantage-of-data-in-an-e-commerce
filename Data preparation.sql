--Data preview

SELECT TOP (1000) [Order_ID]
      ,[Product_ID]
      ,[Quantity_Ordered]
      ,[Order_Date]
      ,[Purchase_Address]
  FROM [Sales Analysis].[dbo].[orders]

SELECT TOP (1000) [Product_ID]
      ,[Name]
      ,[Brand]
      ,[Price]
      ,[Categories]
  FROM [Sales Analysis].[dbo].[products]

--Order date split in month, shopping hour and shopping minute in a new columns

ALTER TABLE orders
ADD Month VARCHAR(10), Shopping_hour INT, Shopping_min INT;

UPDATE orders 
SET Month = DATENAME(MM, Order_Date), Shopping_hour = DATEPART(HOUR, Order_Date), Shopping_min = DATEPART(MINUTE, Order_Date)

--Purchase_Address split in Street, city and state with zip
SELECT 
    PARSENAME(REPLACE(Purchase_Address, ', ', '.'), 3),
    PARSENAME(REPLACE(Purchase_Address, ', ', '.'), 2),
    PARSENAME(REPLACE(Purchase_Address, ', ', '.'), 1)
FROM orders

ALTER TABLE orders
ADD Street VARCHAR(50), City VARCHAR(50), State_zip VARCHAR(10)

UPDATE orders
SET Street = PARSENAME(REPLACE(Purchase_Address, ', ', '.'), 3), City = PARSENAME(REPLACE(Purchase_Address, ', ', '.'), 2), State_zip = PARSENAME(REPLACE(Purchase_Address, ', ', '.'), 1)

--Split Zip code and State

ALTER TABLE orders
ADD State VARCHAR(10), Zip_Code INT;

UPDATE orders
SET State = SUBSTRING(State_zip, 1, 2), Zip_code = SUBSTRING(State_Zip, 4, 5)

--Remove columns that we are not going to use

ALTER TABLE orders
DROP COLUMN Purchase_Address, State_zip

--Join product table to build new dataset
SELECT TOP 10 *
FROM products

-- Create a final data table
SELECT p.Product_name, p.Product_ID, p.Brand, p.Price, p.Categories,
    o. Order_ID, o.Quantity_Ordered, o.Order_Date, o.Month, o.Shopping_hour, o.Shopping_min, o.City, o.State
INTO [Sales Analysis].[dbo].[final_data]
    FROM products p
    JOIN orders o
    ON o.Product_ID = p.Product_ID

--Calculate the sales or revenue
ALTER TABLE final_data
ADD Sales FLOAT;

UPDATE final_data
SET Sales = Quantity_Ordered * Price

SELECT TOP (100) [Product_name]
      ,[Price]
      ,[Quantity_Ordered]
      ,[Sales]
  FROM [Sales Analysis].[dbo].[final_data]

SELECT *
FROM [Sales Analysis].[dbo].[final_data]




