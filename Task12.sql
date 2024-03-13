select distinct users.username
from users
left join memberships on memberships.user_id = users.id
left join (
    select group_id
    from memberships
    where user_id = (select id from users where username = 'uolevi')
) as uolevi_groups on memberships.group_id = uolevi_groups.group_id
where uolevi_groups.group_id is null;