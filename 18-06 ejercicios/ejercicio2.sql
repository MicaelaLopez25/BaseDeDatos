
--2) modificar/pasar los paises de la actual region "midlle east adn Africa" a las nuevas regiones

UPDATE countries set region_id = 5
WHERE country_name in ('Egypt','Zimbabwe','Zambia','Egypt,'Nigeria')

UPDATE countries set region_id = 6
WHERE country_name in ('Israel','Kuwait')