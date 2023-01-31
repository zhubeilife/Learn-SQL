# README

## 《SQL基础教程 第2版》

下载文件简介
------------------------------------------------------------

●下载文件内容

下载文件包含了以下内容。

```bash
:\
├─ReadMe.txt            本文件
├─Sample                第0章～第9章的示例程序
└─answer                练习题的SQL语句和答案
```

○Sample文件夹
本书中所使用的示例程序分别保存在以章节为单位的文件夹中。在Sample\CreateTable文件夹中，按照RDBMS的不同，分别保存了用来创建示例用表的SQL语句。

```bash
\Sample
 ├─Ch00     第0章的示例程序
 ├─Ch01     第1章的示例程序
 │  ├─1_4  1-4节的示例程序
 │  └─1_5  1-5节的示例程序
 │      .
 │      .
 │      .
 │
 ├─Ch09     第9章的示例程序
 │  ├─9_2  9-2节的示例程序
 │  └─9_3  9-3节的示例程序
 │
 └─CreateTable  创建示例用表的SQL语句
     ├─DB2
     ├─MySQL
     ├─Oracle
     ├─PostgreSQL
     └─SQLServer
```

○answer文件夹
各章末习题的答案（示例程序），分别保存在以章节为单位的目录中。


●关于示例程序

示例程序的文件名，与书中记述的列表号码（或者页号）相对应。例如，1-5节记述的程序清单1-3的示例程序，保存的位置和文件名如
下所示。

```bash
:\
└─Sample
    └─Ch01
        └─1_5
            └─List1_3.sql
```

此外，像1-5节的代码清单1-4那样，在不同的RDBMS中存在差异的SQL语句，会像下面这样，在其文件名的末尾加上RDBMS的名称。

.List1_4_DB2_PostgreSQL_MySQL.sql
.List1_4_Oracle.sql
.List1_4_SQL Server.sql

○创建示例用表的SQL语句
收录在Sample\CreateTable文件夹之中，创建表用的SQL文件名称为“CreateTable<表名>.sql"。
例如，PostgreSQL用到的表Product的做成文件保存在下述目录中。

```bash
:\
└─Sample
    └─CreateTable
        └─PostgreSQL
            └─CreateTableProduct.sql
```

保存在Sample文件中的示例程序文件（扩展名为“.sql””.txt”），可以使用Windows的记事本或者其他文本编辑器打开。


●声明

  本书中的示例程序已经编辑部确认，在正常使用时不会出现任何问题。对于文件执行结果所造成的任何损失，本书作者、软件开发人员和翔
泳公司概不承担相关责任。
  Sample文件夹中所收录文件的著作权归本书作者所有。读者可以出于个人目的，根据需要自行使用和修改其中的程序。
  对于个别环境相关的问题，以及由本书对应范围外的环境设置所造成的执行错误，本公司概不负责解答。


## Install postgresal on debian

```bash
    sudo apt install postgresql postgresql-client
```

postgresal client
```
pip install pgcli
```

### database cli tools

https://www.dbcli.com/

### running with WSL

https://learn.microsoft.com/en-us/windows/wsl/tutorials/wsl-database
https://www.cybertec-postgresql.com/en/postgresql-on-wsl2-for-windows-install-and-setup/

mysql: https://dev.mysql.com/doc/mysql-apt-repo-quick-guide/en/

## install mysql server on mac using brew

```bash
brew install mysql
```

## Most Useful Code

```sql
CREATE TABLE Product
(product_id      CHAR(4)      NOT NULL,
 product_name    VARCHAR(100) NOT NULL,
 product_type    VARCHAR(32)  NOT NULL,
 sale_price      INTEGER ,
 purchase_price  INTEGER ,
 regist_date     DATE ,
 PRIMARY KEY (product_id));

-- MySQL
-- DML:插入数据
START TRANSACTION;
INSERT INTO Product VALUES ('0001', 'T恤' ,'衣服', 1000, 500, '2009-09-20');
INSERT INTO Product VALUES ('0002', '打孔器', '办公用品', 500, 320, '2009-09-11');
INSERT INTO Product VALUES ('0003', '运动T恤', '衣服', 4000, 2800, NULL);
INSERT INTO Product VALUES ('0004', '菜刀', '厨房用具', 3000, 2800, '2009-09-20');
INSERT INTO Product VALUES ('0005', '高压锅', '厨房用具', 6800, 5000, '2009-01-15');
INSERT INTO Product VALUES ('0006', '叉子', '厨房用具', 500, NULL, '2009-09-20');
INSERT INTO Product VALUES ('0007', '擦菜板', '厨房用具', 880, 790, '2008-04-28');
INSERT INTO Product VALUES ('0008', '圆珠笔', '办公用品', 100, NULL, '2009-11-11');
COMMIT;
```

## Note

```sql
-- 这里的SUM(sale_price)是针对已经group by之后的集合做的操作
SELECT product_type, SUM(sale_price), SUM(purchase_price)
  FROM Product
 GROUP BY product_type
HAVING SUM(sale_price) > SUM(purchase_price) * 1.5;
```