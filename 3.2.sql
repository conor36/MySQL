select c.code,c.name,l.Language
from CountryLanguage l
join Country c on c.Code = l.CountryCodeS
group by c.Code
