### 概述

----

 #### Oracle 基础概述

> 课程介绍

* **用户与表空间**
	* 用户：主要了解安装Oracle 之后的系统用户有哪些以及如何通过他们来登录数据库
	* 表空间：介绍所登录数据库的用户所使用的默认表空间是什么以及我们自己如何自定义表空间
* **表与约束**
	* 表：介绍如何创建和管理表以及如何在表中操作数据
	* 约束在表中的作用：让表中的数据更加规范和有效，约束主要包括：
		* 主键约束
		* 外键约束
		* 唯一约束
		* 检查约束
		* 非空约束
		* 默认值约束
* **查询语句**
	* 查询的作用：帮助统计和查询数据
	* 强大的select

#### Oracle 安装

> 如何在Windows 7中安装Oracle 11g

1. 获取安装软件：

	选择Oracle Database 11g Release 2 -> 有两个压缩包

2. 把两个压缩包解压到同一目录下

3. 选择 setup.exe， 右键以管理员身份运行

4. 配置安全更新：去掉复选框

5. 安装选项：创建和配置数据库

	说明：既完成了Oracle 的安装，同时又配置了一个我们可以使用的数据库

6. 安装选项：桌面类

7. 典型安装：tips：不要安装到系统盘下，因为会占用很大空间，对启动其他程序会造成影响

	* Oracle基目录：即软件安装目录

	* 数据库版本：企业版

	* 全局数据库名：orcl（默认的，不需要改动）
	* 管理口令：登录数据库的密码

8. 先决条件检查：查看当前环境是否满足安装条案件

9. 概要：安装的信息

10. 安装产品：进行安装

	* 中间的时候会进行一些配置（会自动启动Database Configuration Assistant)，会复制一些数据库文件放到刚才我们设置的目录下，然后还要创建数据库
	* 还要记得操作的日志文件的位置，方便日后查看

11. 完后以后可以查看数据库信息，包括全局数据库名，系统标识符，服务器参数文件名（以`.ora`结尾）等

	* 还有一个注意：所有数据库账户（SYS, SYSTEM, DBSNMP 和 SYSMAN 除外）都已锁定……，可以通过口令管理来决定是否锁定或不锁定。也可以给sys和system设置新口令，如果不设置的话，默认口令就是安装Oracle 时设置的密码

12. 安装成功之后需要验证：

	1. 开始-> Oracle-OraZDb11g_home1-> 应用程序开发 -> SQL Plus -> 使用system 登录 确认是否登录成功

	2. 可通过企业管理器： 

		开始->  Oracle-OraZDb11g_home1 -> Database Control - orcl -> 

		打开企业管理器页面（不可使用IE浏览器） -> 

		输入用户名：system 

		口令： xxxx 

		连接身份： SYSDBA(管理员身份) -> 

		提示登录失败（==因system 权限还不够，需要更换为sys账户==）->

		再次尝试登录，成功，确认安装成功

#### Oracle 卸载

在安装目录下找到 `deinstall`文件夹，运行批处理文件 `deinstall.bat` 即可开始卸载Oracle

首先对配置进行检查，然后要求确认 

*<u>指定要取消配置的所有单实例监听程序 [LISTENER]</u>*：点击回车继续，

*<u>指定在此 Oracle 主目录中配置的数据库名的列表 [ORCL]</u>*：继续回车，

*<u>是否仍要修改 ORCL 数据库的详细资料？ [n]</u>* : y 然后回车，

*<u>指定此数据库（1. 单实例数据库 | 2. 启用 Oracle Restart 的数据库）的类型 [1]</u>* : 回车，

……

后面一路都回车就行了，碰到需要选y/n 的都选y，然后一直到：

*<u>更新数据库 ORCL 的 Enterprise Manager Database Control 配置</u>*

更改完配置以后就开始清除ORCL 这个数据库了

最后删除 Windows 和 .NET 产品配置。。。

移除到当前目录（即deinstall）时提示无法删除，该目录正在使用中，所以需要我们等程序执行完后手动把这个目录删掉就行了

…

当DOS页面自动消失后表明删除操作完成



这个也是从11g 开始添加的快捷移除Oracle 的方式



### 用户和表空间

----

1. 用户：主要是讲解系统用户有哪些，以及如何用系统用户来登录SQL Plus工具
	* 如何通过系统用户来登录SQL Plus 工具
	* 如何查看登录用户
	* 启用scott 用户（scott 用户也是默认用户之一）
2. 表空间：主要是介绍表空间的作用以及如何来管理表空间

#### 2-1 使用系统用户登录Oracle

> 登录SQL Plus

系统用户有哪些：

**sys, system**

​	都是权限比较高的用户，并且sys 的权限高于system，在使用sys 登录的时候必须使用管理员或系统操作人员的权限登录， 而system 可以直接登录

**sysman**

​	用来操作企业管理器的，也是管理员级别的用户

**scott**

​	是Oracle 创始人之一的名字

前三个用户的密码是在安装Oracle 数据库的时候设置的，scott 默认的密码是tiger



> 如何使用系统用户登录Oracle 数据库

`[username/password][@server][as sysdba|sysoper]`

如果数据库不在本机上那就需要输入服务名或IP地址

例：

`system/root@orcl as sysdba`（orcl 就是自己设置的服务名）

> 实操

打开SQL Plus，输入用户名：`system/xxxx`, 然后回车，就可以直接登录了（不需要指定角色因为上面说了system 可以直接登录），然后直接尝试在当前连接下用sys 登录：

`SQL> connect sys/xxxx`,

登录失败，提示sys必须使用sysdba或sysoper来登录，因此重新进行连接：

`SQL> connect sys/xxxx as sysdba;`

注： 

1. 在SQL 语句中是不区分大小写的    
2. 没有写@server 说明数据库和服务器安装在同一台机器上，因此就不需要有服务名了



#### 2-2 查看登录用户

使用命令 `show user`

![1574234534324](C:\Users\gregory.shen\AppData\Roaming\Typora\typora-user-images\1574234534324.png)

注：在SQLPlus中的某些命令不需要以分号结尾，但是SQL语句一定要以分号结尾

除了`show user`， 还可以通过数据字典来查看其它的用户信息，即：`dba_users`

> 数据字典是数据库提供的表，用于查看数据库的信息

数据字典就跟数据表一样，也是由很多字段来组成，也可以通过`desc` 来查看数据字典包含哪些字段（`desc`也不是SQL语句的范畴，所以语句后加不加分号也是一样的）

![1574234866529](C:\Users\gregory.shen\AppData\Roaming\Typora\typora-user-images\1574234866529.png)

查看在数据字典中包含哪些用户：

![1574235006183](C:\Users\gregory.shen\AppData\Roaming\Typora\typora-user-images\1574235006183.png)

#### 2-3 启用scott 用户

默认情况下是锁定的，如果要使用首先要启动scott。

**启用用户的语句**：`alter user {username} account unlock`

锁定用户的语句：`alter user {username} account lock`

**使用scott用户登录SQL Plus**：`connect scott/tiger`

![1574235745913](C:\Users\gregory.shen\AppData\Roaming\Typora\typora-user-images\1574235745913.png)

#### 2-5 表空间概述

##### 理解表空间

###### 表空间与数据库的关系

表空间：是数据库的逻辑存储空间，我们可以把表空间理解为在数据库当中开辟的一个空间用于存放数据库的对象。一个数据库可以由多个表空间来构成，表空间概念也是与MySQL，SQLServer的重要区别，并且Oracle的很多优化都是通过表空间实现的

###### 表空间与数据文件的关系

表空间是由一个或多个数据文件构成的，数据文件的位置和大小可以由用户自己来定义。我们存储的表或数据库中的其他对象都是存放到表空间的数据文件里面的

##### 表空间的分类

###### 永久表空间

​		能存放的东西：数据库中要永久化存储的对象，比如表，视图，存储过程等

###### 临时表空间

​		主要用于存放数据库操作当中中间执行的过程，当执行结束之后存放的内容就会被自动释放掉，不进行永久性的保存

###### UNDO表空间

​		用于保存事务所修改数据的旧值，也就是说被修改之前的数据。比如当我们对一张表进行修改时，它会对修改前的信息进行保存，这样的话我们就可以对数据进行回滚，也就是说对数据进行撤销操作，这就是undo表空间的作用

#### 2-6 查看用户的表空间

##### 数据字典

> dba_tablespaces、user_tablespaces数据字典

`dba_tablespaces`：针对的是系统管理员级的用户来查看的数据字典

`user_tablespaces`：普通用户登录之后来查看的数据字典

![1574997041216](C:\Users\gregory.shen\AppData\Roaming\Typora\typora-user-images\1574997041216.png)

![1574997098455](C:\Users\gregory.shen\AppData\Roaming\Typora\typora-user-images\1574997098455.png)

作为系统管理员登录的时候所对应的默认表空间一共就这6个

`SYSTEM`:主要用来存放sys用户的表、视图和存储过程的数据库对象，也被称为系统表空间

`SYSAUX`: 作为`EXAMPLE`的辅助表空间

`EXAMPLE`: 用于安装Oracle 11g数据库实例使用的表空间

`UNDOTBS1`: 存储一些撤销信息，属于UNDO 类型的表空间

`TEMP`：用于存储SQL 语句处理的表、索引信息，是一个临时表空间

`USERS`：永久表空间，存储数据库用户创建的数据库对象，和system差不多，只不过system用来存放系统信息

![1574998387226](C:\Users\gregory.shen\AppData\Roaming\Typora\typora-user-images\1574998387226.png)

![1574998429797](C:\Users\gregory.shen\AppData\Roaming\Typora\typora-user-images\1574998429797.png)

普通用户登录默认的表空间为以上6个

使用scott用户登录然后查看：

![1574998536441](C:\Users\gregory.shen\AppData\Roaming\Typora\typora-user-images\1574998536441.png)

发现不可以查看`dba_tablespaces`但可以查看`user_tablespaces`，说明向下兼容

> dba_users、user_users 数据字典

`dba_users`：是属于系统管理员级可以查看的字典

`user_users`：普通用户可以查询的字典

每一个用户下面可以对应默认表空间和临时表空间，默认表空间就是在用户下面创建这些对象所存放的位置，临时表空间是临时的信息，正常情况下只有一个临时表空间temp

![1575024913833](C:\Users\gregory.shen\AppData\Roaming\Typora\typora-user-images\1575024913833.png)

![1575024818901](C:\Users\gregory.shen\AppData\Roaming\Typora\typora-user-images\1575024818901.png)

##### 设置用户的默认或临时表空间

```plsql
ALTER USER username DEFAULT|TEMPORARY TABLESPACE tablespace_name
```

![1575025640655](C:\Users\gregory.shen\AppData\Roaming\Typora\typora-user-images\1575025640655.png)

#### 2-8 创建表空间

```plsql
CREATE [TEMPORARY] TABLESPACE tablespace_name TEMPFILE|DATAFILE 'xx.dbf' SIZE xx
```

DATAFILE就是表空间中数据文件的名字，SIZE表示数据文件的大小

如果在xxx.dbf中没有指定数据文件的路径，会默认存放到oracle的安装目录下，如果创建的是临时表空间，添加temporary和替换tempfile关键字就可以了。

![1575192670178](C:\Users\gregory.shen\AppData\Roaming\Typora\typora-user-images\1575192670178.png)

创建好表空间之后，如何查看表空间中文件的具体路径（如果不知道默认路径的话）：

在永久表空间中可以通过dba_data_files数据字典进行查看：

![1575192820518](C:\Users\gregory.shen\AppData\Roaming\Typora\typora-user-images\1575192820518.png)

在这个数据字典中具有tablespace_name和文件名，那么就可以查看创建的表空间里他的文件名：

![1575192975258](C:\Users\gregory.shen\AppData\Roaming\Typora\typora-user-images\1575192975258.png)

**注意**：表空间的名称必须大写

如果是临时表空间，查看dba_temp_files这个数据字典：

![1575193116837](C:\Users\gregory.shen\AppData\Roaming\Typora\typora-user-images\1575193116837.png)

#### 2-9 修改表空间

##### 修改表空间的状态

> 设置联机或脱机状态

```plsql
ALTER TABLESPACE tablespace_name ONLINE|OFFLINE;
```

![1575195671139](C:\Users\gregory.shen\AppData\Roaming\Typora\typora-user-images\1575195671139.png)

可以通过查看dba_tablespaces来查看表空间的状态

![1575195788995](C:\Users\gregory.shen\AppData\Roaming\Typora\typora-user-images\1575195788995.png)

其中STATUS字段就表明的是表空间的状态

现在来查询test1_tablespace这个表空间的状态：

![1575195877600](C:\Users\gregory.shen\AppData\Roaming\Typora\typora-user-images\1575195877600.png)

改回online状态：

![1575195948084](C:\Users\gregory.shen\AppData\Roaming\Typora\typora-user-images\1575195948084.png)

> 设置只读或可读写状态

```plsql
ALTER TABLESPACE tablespace_name READ ONLY|READ WRITE
```

默认状态下表空间的状态是read write（可读写）状态

不管是要将表空间设置成只读还是可读写状态，表空间都必须是在线状态，脱机状态是不能更改属性的

![1575196192074](C:\Users\gregory.shen\AppData\Roaming\Typora\typora-user-images\1575196192074.png)

再改回读写状态，再次查看状态为online，也就是默认的联机状态就是读写状态

![1575196279004](C:\Users\gregory.shen\AppData\Roaming\Typora\typora-user-images\1575196279004.png)

##### 修改数据文件

在2-10中讲解

#### 2-10 修改数据文件

##### 如何增加数据文件

```plsql
ALTER TABLESPACE tablespace_name ADD DATAFILE 'xx.dbf' SIZE xx;
```

文件名可以写路径也可以写名字

![1575197485602](C:\Users\gregory.shen\AppData\Roaming\Typora\typora-user-images\1575197485602.png)

##### 如何删除数据文件

```plsql
ALTER TABLESPACE tablespace_name DROP DATAFILE 'filename.dbf'
```

不能够删除表空间中第一个数据文件，如果要删除的话就要把整个表空间删掉

![1575198113460](C:\Users\gregory.shen\AppData\Roaming\Typora\typora-user-images\1575198113460.png)

#### 2-12 删除表空间

```plsql
DROP TABLESPACE tablespace_name [INCLUDING CONTENTS]
```

如果只是想删除表空间而不删除数据文件，只写前面不含中括号的部分，如果想同时删除数据文件，那么就加上including部分。

![1575198337253](C:\Users\gregory.shen\AppData\Roaming\Typora\typora-user-images\1575198337253.png)

### 管理表

----

#### 3-1 认识表

#### 3-2 数据类型

#### 3-4 管理表

#### 3-5 修改表

#### 3-7 删除表

### 操作表中的数据

----

#### 4-1 操作表中的数据

#### 4-2 复制表数据

#### 4-3 修改数据

#### 4-4 删除数据

### 约束

----

5-1 约束概述

5-2 非空约束

5-3 主键约束

5-4 在修改表时添加主键约束

5-5 在修改表时添加外键约束（上）

5-6 在修改表时添加外键约束（下）

5-7 在修改表时添加外键约束

5-8 删除约束

5-9 在创建表时设置唯一约束

5-10 在修改表时添加唯一约束

5-11 删除唯一约束

5-12 在创建表时设置检查约束

5-13 在修改表时添加检查约束

5-14 删除检查约束

5-15 约束小结

#### 查询语句

----

6-1 查询概述

6-2 基本查询语句

6-3 在sql/plus中设置格式

6-4 查询表中所有字段及指定字段

6-5 给字段设置别名

6-6 运算符和表达式

6-7 在select语句中使用运算符

6-8 带条件的查询

6-9 模糊查询

6-10 范围查询

6-11 对查询结果进行排序

6-12 case…when 语句

6-15 decode 函数的使用

#### 课程总结

----

7-1 总结























