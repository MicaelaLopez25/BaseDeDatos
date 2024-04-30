1)
SELECT title FROM film
ORDER by title ASC;
2) 
SELECT title FROM film
ORDER by title ASC;
3)
SELECT title, rating, replacement_cost FROM film
WHERE rating like 'PG' OR rating like 'PG-13'
ORDER by replacement_cost DESC, title ASC;
4)
SELECT city, c.country FROM city p
JOIN country c on p.country_id = c.country_id
GROUP by c.country_id
5)
SELECT c.country, count(city) as cantidad_de_ciudades FROM city o 
JOIN country c ON o.country_id = c.country_id
GROUP by c.country_id
ORDER by cantidad_de_ciudades DESC
6)
SELECT c.country, count(city) as cantidad_de_ciudades FROM city o 
JOIN country c ON o.country_id = c.country_id
GROUP by c.country_id
HAVING cantidad_de_ciudades > 2
ORDER by cantidad_de_ciudades DESC
7)
SELECT max(return_date) as actual, min(return_date) as vieja  FROM rental
8)
