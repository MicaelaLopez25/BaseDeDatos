SELECT name, d.car_make, d.car_model, d.plate_number from person p
JOIN drivers_license d on p.license_id = d.id 
WHERE gender = 'female' and age > 40