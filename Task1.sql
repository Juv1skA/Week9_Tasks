select p1.name
from products p1
left join products p2 on p1.price = p2.price and p1.name != p2.name
where p2.name is null;