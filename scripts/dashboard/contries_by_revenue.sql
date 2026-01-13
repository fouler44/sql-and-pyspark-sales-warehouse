SELECT
    c.country,
    SUM(s.sales) AS total_revenue
FROM 
    sales_project.gold.fact_sales s
JOIN
    sales_project.gold.dim_customers c
    ON s.customer_key = c.customer_key
WHERE
    c.country != "n/a"
GROUP BY
    c.country;
