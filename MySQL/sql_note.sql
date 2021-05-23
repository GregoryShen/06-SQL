# 数据库
# 新增数据库
create database {db_name}

-> create database if not exists {db_name} character set = utf8;

# 修改数据库
alter database {db_name} if exists charset=utf8;

-> alter database {db_name} character set = utf8;

## 除了改字符集在数据库层面上还能改什么?
-> 没有了 就只能改字符集

# 关于数据库的“查”
# 显示数据库的结构  主要是查看字符集吧 别的也看不了什么了
show create database {db_name};


## 关于数据库的“查” 还有吗?
-> 没有了 也就能查看一下字符集

# 删除数据库
drop database {db_name} if exists;

-> drop database if exists {db_name};

-----------------------------------
# 表
# 新增表

-----------------------------------
# DBMS级
# 显示DBMS中所有的数据库
show databases;
# 数据库切换
use {db_name};
# 显示字符集
show variables like "%char%";
# 查看所有用户
select * from 
# 查看用户权限
show privileges 
# 刷新权限
flush privileges
# 显示版本
select version();


# 查看警告信息
show warnings;
