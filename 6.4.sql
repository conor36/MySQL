select l.language,count(c.code) as count, sum((c.Population * l.Percentage)) as speakers
from CountryLanguage l,Country c
where l.CountryCode = c.Code
group by l.Language
order by speakers desc
limit 10
