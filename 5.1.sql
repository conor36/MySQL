select e.employeeNumber,od.quantityOrdered,od.priceEach,sq.total
from employees e 
join customers c on e.employeeNumber = c.salesRepEmployeeNumber
join orders o on c.customerNumber = o.customerNumber
join orderdetails od on o.orderNumber = od.orderNumber
join (select e.employeeNumber,sum(od.quantityOrdered * priceEach) as total
from employees e 
join customers c on e.employeeNumber = c.salesRepEmployeeNumber
join orders o on c.customerNumber = o.customerNumber
join orderdetails od on o.orderNumber = od.orderNumber
group by e.employeeNumber) sq on sq.employeeNumber = e.employeeNumber
group by e.employeeNumber




