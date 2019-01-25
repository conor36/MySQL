select c.name,co.name
from City c
join Country co on c.CountryCode = co.Code
where c.name like 'A%'
