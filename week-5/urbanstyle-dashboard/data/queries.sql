SELECT 
    DATE_TRUNC('month', sale_date) AS kuu,
    SUM(total_price) AS tulu
FROM "public sales"
GROUP BY kuu
ORDER BY kuu;
