--Utilizando IN y subquery pasar los paises que se
-- encuentran en la region africa y middel east (5y6) a la nueva region

UPDATE countries SET region_id = (SELECT region_id FROM regions WHERE region_name = 'Midlle east and Africa')
WHERE country_name IN (SELECT country_name FROM countries WHERE region_id = 6)

UPDATE countries SET region_id = (SELECT region_id FROM regions WHERE region_name = 'Midlle east and Africa')
WHERE country_name IN (SELECT country_name FROM countries WHERE region_id = 5)