-- 2) Listar el nombre y los datos del auto
-- (marca, modelo y patente) de todos los
-- varones más de 70 años, elegir el orden
-- en que se muestran 

SELECT p.name as Nombre , d.plate_number as Placa, d.car_make as Marca_de_auto, d.car_model as Modelo_de_auto FROM person p
JOIN drivers_license d ON p.license_id = d.id
GROUP by p.name
HAVING d.age > 70
ORDER by Nombre ASC