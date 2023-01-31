/*
  以下是问题的SELECT语句
*/
SELECT product_id, SUM(product_name)
-- 本SELECT语句有错误
  FROM Product
 GROUP BY product_type
 WHERE regist_date > '2009-09-01';

-- 1- where 语句应该在GROUP BY 之前
-- 2- select 跟 group by 的列名应该是一致的，否则就会是多行