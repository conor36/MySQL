select *
from products
where quantityInStock > (select avg(quantityInStock) from products)