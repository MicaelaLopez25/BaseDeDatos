
-- 3) Buscar la lista de todas las personas
-- que no tienen licencia de conducir

SELECT p.name as Nombre, d.car_model as Modelo_de_auto FROM person p
LEFT JOIN drivers_license d ON p.license_id = d.id
WHERE d.car_model is NULL