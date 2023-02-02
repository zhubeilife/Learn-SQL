/*
  下面是问题中的SELECT语句
*/
-- 向视图中添加1行记录
INSERT INTO ViewPractice5_1 VALUES ('刀', 300, '2009-11-02');


-- 实际上和下面的INSERT语句相同
INSERT INTO Product (product_id, product_name, product_type, sale_price, purchase_price, regist_date) 
            VALUES (NULL, '刀', NULL, 300, NULL, '2009-11-02');



/*
  使用PostgreSQL时，需要在INSERT之前
  执行如下语句将视图设定为可以更新
*/
CREATE OR REPLACE RULE insert_rule5_1
AS ON INSERT
TO ViewPractice5_1 DO INSTEAD
INSERT INTO Product (product_name, sale_price, regist_date)
VALUES (new.product_name, new.sale_price, new.regist_date);


/* 
  进行上述设定之后再次执行INSERT时会像下面这样由于NOT NULL约束而发生错误
postgres=# INSERT INTO ViewPractice5_1 VALUES ('刀', 300, '2009-11-02');
ERROR:  null value in column “product_id" violates not-null constraint
*/
