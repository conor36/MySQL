select c.Name,c.Population
from City c,Country co
where c.Name like '%re%' and c.CountryCode = co.Code and co.continent = 'Asia'
order by c.Population desc;



#nested query vesrion(highlight the bottom code to run)
select c.Name,c.Population
from City c join ( SELECT Code , Name , Continent 
from Country 
where  continent = 'Asia' ) AS co
 on c.CountryCode = co.Code
where c.name like '%re%'
order by c.Population desc