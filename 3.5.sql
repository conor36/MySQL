select ca.name,count(c.category_id) as count
from rental r
join inventory i on r.inventory_id = i.inventory_id
join film_category c on i.film_id = c.film_id
join category ca on ca.category_id = c.category_id
group by c.category_id
order by count desc
limit 5