SELECT count(car_make) as cantAutos, car_make FROM drivers_license 
GROUP by car_make 
HAVING cantAutos > 100
ORDER by car_make DESC