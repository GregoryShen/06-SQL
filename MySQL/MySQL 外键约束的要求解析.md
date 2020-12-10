### MySQL 外键约束的要求解析

1. 约束保证数据的完整性和一致性

2. 约束分为表级约束和列级约束：根据约束针对的字段数目多少来决定的，如果约束只针对某一个字段，我们称之为列级约束；如果针对两个或两个以上的字段使用的话，称之为表级约束

3. 按约束的功能划分：

   NOT NULL(非空约束)

   PRIMARY KEY(主键约束)

   UNIQUE KEY(唯一约束)

   DEFAULT(默认约束)

   FOREIGN KEY(外键约束)

---

外键约束：保持数据一致性、完整性，实现一对一或一对多关系

外键约束的要求：

1. 父表和子表（具有外键列的表）必须使用相同的存储引擎，而且禁止使用临时表。
2. 数据表的存储引擎只能为InnoDB
3. 外键列（加过FOREIGN KEY关键字的那列）和参照列必须具有相似的数据类型，其中数字的长度或是否具有符号位必须相同，字符长度则可不同
4. 外键列和参照列必须创建索引。如果外键列不存在索引的话，MySQL将自动创建索引。

外键约束的参照操作

---

插入记录：INSERT [INTO] tbl_name [(col_name,...)] {VALUES|VALUE}({expr | DEFAULT},...)()

​		   INSERT [INTO] tbl_name SET col_name={expr|DEFAULT},...(与第一种的区别在于可以使用子查询)

​	           INSERT [INTO] tbl_name [(col_name,...)] SELECT ... 此方法可以将查询结果插入到指定数据表

更新记录：UPDATE [LOW_PRIORITY] \[IGNORE] table_reference SET col_name1={expr1|DEFAULT} [,col_name2]={expr2|DEFAULT}...[WHERE where_condition] //这是单表更新

删除记录（单表删除）：DELETE FROM tbl_name [WHERE where_condition]

查找记录：

​	SELECT select_expr [, select_expr ...]

[

​	FROM table_references

​	[WHERE where_condition]

​	[GROUP BY {col_name | position} [ASC|DESC],...]

​	[HAVING where_conditon]

​	[ORDER BY {col_name | expr | position} [ASC | DESC],...]

​	[LIMIT{[offset,] row_count | row_count OFFSET offset} ]

]

查询表达式如何书写（select_expr）

* 每个表达式表示想要的一列，必须至少有一个
* 多个列之间以英文逗号分隔
* 星号表示所有列，tbl_name.*可以表示命名表的所有列
* 查询表达式可以使用[AS] alias_name为其赋予别名
* 别名可用于GROUP BY, ORDER BY 或 HAVING 子句

查询表达式的顺序和别名 都会影响结果集

---

查询结果分组：

[GROUP BY {col_name | position} [ASC | DESC],]

分组条件：

对查询结果进行排序：[ORDER BY {col_name | expr | position} [ASC | DESC], ...]

限制查询结果返回的数量：[LIMIT {[offset,] row_count | row_count OFFSET offset}]

---

记录操作：INSERT DELETE UPDATE

---

子查询是指出现在其他SQL语句内的SELECT子句：

例如：

SELECT * FROM t1 WHERE col1 = (SELECT col2 FROM t2);

其中SELECT * FROM t1, 称为Outer Query/Outer Statement

SELECT col2 FROM t2, 称为 SubQuery

---

使用ON 关键字来设定连接条件，也可以使用WHERE代替

通常使用ON关键字来设定连接条件，使用WHERE关键字进行结果集记录的过滤



