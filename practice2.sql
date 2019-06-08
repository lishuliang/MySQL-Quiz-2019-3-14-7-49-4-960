# 取得每个company中最高薪水的人员名字
# 输出结果包含公司名称和人员名称：companyName name
select company.companyName,employee.name
from company,employee
where employee.salary = (select  max(salary) from employee where employee.companyId=company.id) and employee.companyId = company.id
