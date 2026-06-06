SELECT
ROUND(SUM(revenue),2) AS Total_Revenue,
ROUND(SUM(profit),2) AS Total_Profit,
ROUND(SUM(profit)*100/SUM(revenue),2) AS Profit_Margin,
COUNT(DISTINCT order_id) AS Total_Orders,
COUNT(DISTINCT customer_id) AS Total_Customers
FROM sales;