select L.Language,c.Population,sum(((L.Percentage/100) * c.Population)) as total
from Country c,CountryLanguage L
where c.code = L.CountryCode
group by Language
order by total desc