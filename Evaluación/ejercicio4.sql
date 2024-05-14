-- 4) Encontrar el nombre y la dirección completa
-- de la persona que vive en la anteúltima casa
-- de la calle 'Franklin Ave'

SELECT address_street_name, address_number, name FROM person
where address_street_name = 'Franklin Ave'
ORDER BY address_number desc
limit 1;