SELECT 
    s.product_key,
    p.product_name,
    SUM(s.quantity) AS total_quantity
FROM
    sales_project.gold.fact_sales s
JOIN 
    sales_project.gold.dim_products p
    ON s.product_key = p.product_key
GROUP BY
    s.product_key,
    p.product_name
ORDER BY
    total_quantity DESC
LIMIT 10;
