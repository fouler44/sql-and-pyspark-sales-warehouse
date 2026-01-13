SELECT
    DATE_FORMAT(order_date, "yyyy-MM") AS month_date,
    COUNT(*) AS total_sales
FROM 
    sales_project.gold.fact_sales
WHERE
    order_date IS NOT NULL AND order_date > "2012-07-01"
GROUP BY
    month_date;
