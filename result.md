
##result
&nbsp;
####practice1:

---
```$xslt
mysql> SELECT * FROM Employee where salary >6000 AND NAME LIKE '%n%';
+------+----------+------+--------+-----------+--------+
| id   | name     | age  | gender | companyId | salary |
+------+----------+------+--------+-----------+--------+
|    1 | xiaohong |   19 | female |         1 |   7000 |
+------+----------+------+--------+-----------+--------+
1 row in set (0.00 sec)
```
&nbsp;

####practice2:

---
```$xslt
mysql> select company.companyName,employee.name from company,employee where employee.salary = (select  max(salary) from employee where employee.companyId=company.id) and employee.companyId = company.id;
+-------------+----------+
| companyName | name     |
+-------------+----------+
| baidu       | xiaoming |
| alibaba     | xiaohong |
| tengxun     | xiaozhi  |
+-------------+----------+
3 rows in set (0.00 sec)
```
&nbsp;

####practice3:

---
```$xslt
mysql> select company.companyName, AVG(employee.salary) from company,employee where employee.id=company.id group by company.companyName order by avg(employee.salary) desc limit 0,1;
+-------------+----------------------+
| companyName | AVG(employee.salary) |
+-------------+----------------------+
| tengxun     |            8000.0000 |
+-------------+----------------------+
1 row in set (0.00 sec)
```
&nbsp;

####practice3:

---
```$xslt
mysql> select * from employee join (select companyId, avg(salary) as avgSal from employee group by companyId) as T on employee.companyId=T.companyId having salary>avgsal;
+------+----------+------+--------+-----------+--------+-----------+-----------+
| id   | name     | age  | gender | companyId | salary | companyId | avgSal    |
+------+----------+------+--------+-----------+--------+-----------+-----------+
|    0 | xiaoming |   20 | male   |         0 |   6000 |         0 | 5000.0000 |
|    1 | xiaohong |   19 | female |         1 |   7000 |         1 | 6500.0000 |
+------+----------+------+--------+-----------+--------+-----------+-----------+
2 rows in set (0.00 sec)
```