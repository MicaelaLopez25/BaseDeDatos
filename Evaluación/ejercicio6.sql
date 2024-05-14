-- 6) Contar la cantidad de miembros del 
-- gimnasio de cada categoría (gold, silver, 
-- etc), ordenadas desde la que tiene más 
-- miembros a la que tiene menos

SELECT count(membership_status) FROM get_fit_now_member
GROUP by membership_status
ORDER by membership_status DESC