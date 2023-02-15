SELECT '合计' AS product_type, SUM(sale_price)
  FROM Product
UNION ALL
SELECT product_type, SUM(sale_price)
  FROM Product