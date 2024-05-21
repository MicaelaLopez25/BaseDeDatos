SELECT event_name, count(person_id) as personas FROM facebook_event_checkin f
join person p on f.person_id = p.id
join income i on p.ssn = i.ssn
GROUP by event_name
HAVING annual_income > 3500
ORDER by personas DESC
LIMIT 5;