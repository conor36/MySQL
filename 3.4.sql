select f.film_id,a.actor_id,f.title,f.release_year
from  film f left join film_actor a on f.film_id = a.film_id
where a.actor_id is null