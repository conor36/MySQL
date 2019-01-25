select co.Name,cit.name,cit.Population
from City cit
join Country co on cit.CountryCode = co.code
join (select *, avg(Population) as average
from City c
group by c.CountryCode
order by c.CountryCode) sq on sq.CountryCode = cit.CountryCode
where cit.population > sq.average 