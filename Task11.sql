select distinct Users.username
from Memberships
join Users on Memberships.user_id = Users.id
where Memberships.group_id in (
    select group_id
    from Memberships
    where user_id = (select id from Users where username = 'uolevi'));