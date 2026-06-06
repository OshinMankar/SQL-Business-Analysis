SELECT
p.category,
ROUND(SUM(s.revenue),2) AS Revenue,
RANK() OVER(
ORDER BY SUM(s.revenue) DESC
) AS Revenue_Rank
FROM sales s
JOIN products p
ON s.product_id = p.product_id
GROUP BY p.category;