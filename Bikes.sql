-- International Sales for Bike company
-- it's important to ask questions that can provide valuable insights 
-- into various aspects of their operations, products, and services. 
-- Here are five good questions to ask:


-- Recent innovations or improvements made to bike designs or technology?
USE bikes;
SELECT bs1.Year, Product_Category, Sub_Category, Product
FROM bike_sales1 bs1
JOIN bike_sales2 bs2
ON bs1.State = bs2.State
-- ORDER BY bs1.Year ASC
-- LIMIT 1000


-- Think about product development, customer feedback, Global marketing?
SELECT Country, Age_Group, Customer_Gender, Product, Order_Quantity
FROM bike_sales1 bs1
JOIN bike_sales2 bs2
ON bs1.State = bs2.State
ORDER BY Product DESC


-- Are there specific regions or countries where you have seen significant growth? 
SELECT Year, bs1.State, Country, Profit, Cost, Revenue
FROM bike_sales1 bs1
JOIN bike_sales2 bs2
ON bs1.State = bs2.State
ORDER BY Profit


-- What factors contribute to that success? Think sustainability Practices.
USE bikes;
SELECT bs2.Product, Unit_Cost, Order_Quantity, Revenue
FROM bike_sales1 bs1
JOIN bike_sales2 bs2
ON bs1.State = bs2.State
ORDER BY Revenue DESC


-- What trends do you anticipate shaping the future of the biking industry, 
SELECT Age_Group, Customer_Gender, Country, Order_Quantity, Profit
FROM bike_sales1 bs1
JOIN bike_sales2 bs2
ON bs1.State = bs2.State
ORDER BY Profit
LIMIT 10


