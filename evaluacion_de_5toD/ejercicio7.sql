SELECT p.name, ssn, membership_id, membership_status, count(check_in_date) as date from person p
JOIN get_fit_now_member g on p.id = g.person_id
JOIN get_fit_now_check_in f on g.id = f.membership_id
WHERE  membership_start_date like '2017%'
GROUP by ssn
HAVING date > 1
ORDER by membership_status ASC, ssn DESC

-- aca me confundi al usar la informacion de tabla donde no era