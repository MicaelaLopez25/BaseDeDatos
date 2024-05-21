SELECT address_street_name, address_number, name FROM person
where address_street_name = 'Franklin Ave'
ORDER BY address_number desc
limit 3;