select c.customerName,o.orderNumber,o.status,sum((quantityOrdered * priceEach)) as total
from orders o
join customers c on c.customerNumber = o.customerNumber
join orderdetails od on o.orderNumber = od.orderNumber
where o.status = 'Shipped'
group by o.orderNumber
having total > (select avg(s.total) as average
from (
select o.orderNumber,sum((quantityOrdered * priceEach)) as total
from orders o
join orderdetails od on o.orderNumber = od.orderNumber
group by o.orderNumber
) s)