select name, count(Memberships.user_id) as user_count
from Groups
join Memberships on Groups.id = Memberships.group_id
group by name