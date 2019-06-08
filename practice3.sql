#取得平均薪水最高的公司
#输出公司名称和平均薪水：companyName avgSalary
select company.companyName, AVG(employee.salary)
from company,employee
where employee.id=company.id
group by company.companyName order by avg(employee.salary) desc limit 0,1;


