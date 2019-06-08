# 找出薪水在公司的平均薪水之上的人员名字
# 输出标准中包含employee中所有字段和该employee所在公司名称以及该公司平均薪资：
# id | name | age | gender | companyId | salary | companyName | avgsal
select * from employee join (select companyId, avg(salary) as avgSal from employee group by companyId) as T on employee.companyId=T.companyId
having salary>avgsal;
