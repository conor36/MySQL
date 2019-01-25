select concat(e.firstName,' ',e.lastName) as name,e.jobTitle,count(*) as employees
from employees e
join(select *
from employees
) sq on sq.reportsTo = e.employeeNumber
where e.jobTitle like '%manager%'
group by e.employeeNumber
