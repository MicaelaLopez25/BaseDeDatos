select * FROM inhabitant
select * FROM inhabitant where state = 'friendly'
select * FROM inhabitant where job = 'weaponsmith' and state = 'friendly'
select * FROM inhabitant where job LIKE '%smith' and state = 'friendly'
SELECT personid from inhabitant where name = 'Stranger'
SELECT gold from inhabitant where gold = '0'