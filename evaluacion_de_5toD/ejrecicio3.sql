SELECT p.name from person p
LEFT JOIN get_fit_now_member g on p.id = g.person_id
WHERE person_id is NULL