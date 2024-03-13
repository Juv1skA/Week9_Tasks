select top 1 name
from products
where price = (select min(price) from products)
order by name