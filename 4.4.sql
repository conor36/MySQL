select a.first_name,a.last_name, count(*) as in_top_10
from film_actor fa
join actor a on a.actor_id = fa.actor_id
join (select i.film_id, count(*) as count
from rental r
join inventory i on i.inventory_id = r.inventory_id
group by film_id
order by count desc
limit 10) sq on sq.film_id = fa.film_id
group by fa.actor_id
order by count desc,in_top_10 desc