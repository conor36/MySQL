select CountryCode,count(CountryCode) as count
from City
group by CountryCode
order by count desc