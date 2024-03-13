select username from Users
join Memberships on Users.id = Memberships.user_id
group by username
having count(Memberships.group_id) > 1