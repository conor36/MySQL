select avg(amount) as average
from payments
where Year(paymentDate) = 2004
