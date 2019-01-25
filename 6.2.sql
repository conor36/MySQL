select concat(c.first_name," ",c.last_name) as Name,c.email,a.phone
from customer c
join address a on a.address_id = c.address_id
where store_id = 1
group by c.customer_id
order by c.first_name
