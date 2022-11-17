select * from usersAddress;

-- 1:
select sum(user_id)
from usersAddress
where state = 'AK'
group by state;

-- 2:
select
	substr(phone1, 1, 3) as area_code,
	count(substr(phone1, 1, 3)) as area_count
	from usersContact
group by area_code
order by area_code;

-- 3:
-- MIN, COUNT, JOIN, GROUP BY, HAVING
select
	min(first_name),
	county,
	count(county) as county_count
from usersAddress ua
join users u
where ua.id = u.id
group by county
having county_count > 10;