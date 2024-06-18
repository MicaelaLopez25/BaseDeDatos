-- 1) mostrar la cantidad de estaciones totales

 SELECT count(DISTINCT NOMBRE_ESTACION) FROM barcelona_viajeros_por_franja_xlsx

-- 2) mostrar un listado de estaciones único.

SELECT DISTINCT NOMBRE_ESTACION FROM barcelona_viajeros_por_franja_xlsx
GROUP by NOMBRE_ESTACION 

-- 3) Al alistado obtenido adicionar una columna con el total de pasajeros subidos y
-- otras con el total de pasajeros que bajaron.

SELECT count(VIAJEROS_SUBIDOS) as viajerosSubidos , count (VIAJEROS_BAJADOS) as viajerosBajados, NOMBRE_ESTACION FROM barcelona_viajeros_por_franja_xlsx
GROUP by NOMBRE_ESTACION 

-- 4) A la consulta anterior adiccionar una columna que muestre la diferencia entre los
-- pasajeros que subieron y bajaron

SELECT count(VIAJEROS_SUBIDOS) as viajerosSubidos , count (VIAJEROS_BAJADOS) as viajerosBajados, NOMBRE_ESTACION, VIAJEROS_SUBIDOS - VIAJEROS_BAJADOS as Diferencia FROM barcelona_viajeros_por_franja_xlsx
GROUP by NOMBRE_ESTACION 

-- 5) Mostrar cual fue la estacion que mas pasajeros subieron por tramo horario

SELECT NOMBRE_ESTACION, VIAJEROS_SUBIDOS, TRAMO_HORARIO  FROM barcelona_viajeros_por_franja_xlsx
GROUP by TRAMO_HORARIO 
ORDER BY VIAJEROS_SUBIDOS DESC

-- 6) Mostrar cual fue la estacion que mas pasajeros subieron en el dia

SELECT  NOMBRE_ESTACION, sum(VIAJEROS_SUBIDOS) AS SUBIDOS  FROM barcelona_viajeros_por_franja_xlsx
GROUP by NOMBRE_ESTACION 
ORDER BY VIAJEROS_SUBIDOS DESC

--- 7) mostrar caul fue la estacion que mas pasajeros bajaron por tramo horario

SELECT NOMBRE_ESTACION, VIAJEROS_BAJADOS, TRAMO_HORARIO  FROM barcelona_viajeros_por_franja_xlsx
GROUP by TRAMO_HORARIO 
ORDER BY VIAJEROS_BAJADOS DESC

-- 8) Mostrar cual fue la estacion que menos pasajeros bajaron en el dia

SELECT  NOMBRE_ESTACION, sum(VIAJEROS_BAJADOS) AS BAJADOS  FROM barcelona_viajeros_por_franja_xlsx
GROUP by NOMBRE_ESTACION 
ORDER BY VIAJEROS_BAJADOS DESC

-- 9) Mostrar cual fue la estacion que tuvo la mayor diferencia entre pasajeros que 
-- subieron y bajaron por tramo de horario

SELECT  NOMBRE_ESTACION, VIAJEROS_SUBIDOS - VIAJEROS_BAJADOS as diferencia, TRAMO_HORARIO  FROM barcelona_viajeros_por_franja_xlsx
GROUP by TRAMO_HORARIO 
ORDER by diferencia DESC


-- 10 ) Mostrar cual fue la estacion que tuvo la mayor diferencia entre pasajeros
-- que subieron y bajaron.

SELECT  NOMBRE_ESTACION, VIAJEROS_SUBIDOS - VIAJEROS_BAJADOS as diferencia FROM barcelona_viajeros_por_franja_xlsx
GROUP by NOMBRE_ESTACION 
ORDER by diferencia ASC

-- 11) cual fue el promedio de pasajeros que viajaron por tramo?

SELECT avg(VIAJEROS_SUBIDOS) as viajerosSubidos , TRAMO_HORARIO FROM barcelona_viajeros_por_franja_xlsx
GROUP by TRAMO_HORARIO

-- No lo termine