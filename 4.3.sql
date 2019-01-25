select concat(c.first_name,' ',c.last_name) as name,p.customer_id,t.total
from payment p
join customer c on c.customer_id = p.customer_id
join
(select * , sum(amount) as total
from payment
group by customer_id) t on t.customer_id = p.customer_id
where t.total > 100
group by p.customer_id