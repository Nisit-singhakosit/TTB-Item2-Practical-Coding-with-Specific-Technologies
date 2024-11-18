SELECT
    customer_id,
    MAX(sale_amount) as MaxSaleAmount,
    RANK() OVER (ORDER BY MAX(sale_amount) DESC) as SaleRank
FROM
    sales
GROUP BY
    customer_id
ORDER BY
    MaxSaleAmount DESC;

SELECT
    c.customer_id,
    c.firstname,
    SUM(s.sale_amount) as TotalSaleAmount,
    RANK() OVER (ORDER BY SUM(s.sale_amount) DESC) as AmountRank
FROM
    sales s INNER JOIN customers c ON s.customer_id = c.customer_id
GROUP BY
    customer_id;
