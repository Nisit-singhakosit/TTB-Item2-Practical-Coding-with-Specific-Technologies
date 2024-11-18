TRUNCATE sales;
INSERT INTO sales (customer_id, sale_amount, sale_date)
SELECT
    FLOOR(RAND() * 5) + 1,  -- Generate random customer_id between 1 and 5
    ROUND(RAND() * 1000, 2),  -- Generate random sale_amount between 0 and 1000 with 2 decimal places
    DATE_SUB(CURDATE(), INTERVAL FLOOR(RAND() * 365) DAY)  -- Generate random sale_date within the past year
FROM

    (SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1) AS t1,
    (SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1) AS t2,
    (SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1 UNION ALL SELECT 1) AS t3;

