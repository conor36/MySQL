select Region,sum(Population) as total,avg(LifeExpectancy) as average_LE
from Country
group by Region
order by average_LE desc