# 1.创建数据库employee_db
create database employee_db;
# 2.在数据库employee_db中创建table：`Employee`
use employee_db;
create table Employee (id INT, name VARCHAR(45), age INT, gender VARCHAR(45), companyId INT, salary INT);
# 3.将`employee-data.csv`文件中的数据导入数据表Employee中
LOAD DATA LOCAL INFILE 'employee-data.csv' INTO TABLE Employee FIELDS TERMINATED BY ',';
# 4.在数据库employee_db中创建table：`Company`
create table Company (id INT, companyName VARCHAR(45), employeesNumber INT);
# 5.将`company-data.csv`文件中的数据导入Company数据表中
LOAD DATA LOCAL INFILE 'company-data.csv' INTO TABLE Employee FIELDS TERMINATED BY ',';
# 6.找出Employee表中姓名包含`n`字符并且薪资大于6000的雇员所有个人信息
SELECT * FROM Employee where salary >6000 AND NAME LIKE '%n%';
# ps:本练习中只需要将6的结果复制到`result.txt`文件中
