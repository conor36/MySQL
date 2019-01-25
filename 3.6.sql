select f.film_id,f.title,c.name as category,description
from film f
join language l on f.language_id = l.language_id
join (select *,count(actor_id) as actor_count
from film_actor
group by film_id) sq on f.film_id = sq.film_id
join film_category fc on f.film_id = fc.film_id
join category c on c.category_id = fc.category_id
where l.name = 'English'  and actor_count > 3