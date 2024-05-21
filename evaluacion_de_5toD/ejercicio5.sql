SELECT min(age) as minima_edad, max(age) as maxima_edad, avg(age) as edad_promedio FROM person p
JOIN drivers_license d ON p.license_id = d.id
WHERE d.gender = 'male'
