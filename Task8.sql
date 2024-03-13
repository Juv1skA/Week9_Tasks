select username, count(Memberships.group_id) as group_count
from Users
left join Memberships on Users.id = Memberships.user_id
group by username