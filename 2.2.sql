select count(film_id) as count
from film
where film_id = 3
group by film_id