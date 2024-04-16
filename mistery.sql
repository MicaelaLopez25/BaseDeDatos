1)
SELECT * FROM crime_scene_report 
WHERE type = 'murder' 
AND city = 'SQL City'
AND date = "20180115"
;
/* 20180115	murder	Security footage shows that there were 2 witnesses. 
The first witness lives at the last house on "". 
The second witness, named Annabel, lives somewhere on "Franklin Ave".	SQL City*/


2)
SELECT address_street_name,address_number,name FROM person
 where address_street_name = "Franklin Ave" AND name LIKE "annabel%"
 
 /* Franklin Ave	103	Annabel Miller */

3)
SELECT address_street_name,address_number,name FROM person
 where address_street_name = "Northwestern Dr"
 ORDER BY address_number desc
 limit(1);
/* Northwestern Dr	4919	Morty Schapiro */

4)
SELECT p.name, i.transcript FROM person p
JOIN interview i ON i.person_id = p.id
 where p.name LIKE "annabel miller"

 /* Annabel Miller	I saw the murder happen, 
 and I recognized the killer from my gym when I was working out last week on January the 9th.*/

 5)
 SELECT p.name, i.transcript FROM person p
JOIN interview i ON i.person_id = p.id
 where p.name LIKE "Morty Schapiro"
 
 /* Morty Schapiro	I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag. 
 The membership number on the bag started with "48Z". Only gold members have those bags. 
 The man got into a car with a plate that included "H42W". */

 6)
 SELECT p.name, d.plate_number FROM person p
JOIN drivers_license d ON p.license_id = d.id
where d.plate_number LIKE "%H42W%"

/* Tushar Chandra	4H42WR
   Jeremy Bowers    0H42W2
   Maxine Whitely	H42W0X */

7)
SELECT check_in_date,membership_id FROM get_fit_now_check_in g
WHERE check_in_date = "20180109"

/* 
20180109	X0643
20180109	UK1F2
20180109	XTE42
20180109	1AE2H
20180109	6LSTG
20180109	7MWHJ
20180109	GE5Q8
20180109	48Z7A
20180109	48Z55
20180109	90081*/

8)
SELECT * FROM get_fit_now_check_in g
JOIN get_fit_now_member m on g.membership_id = m.id
WHERE membership_id LIKE '48Z%' AND membership_status = 'gold'

/* 48Z7A	20180109	1600	1730	48Z7A	28819	Joe Germuska	20160305	gold
48Z55	20180109	1530	1700	48Z55	67318	Jeremy Bowers	20160101	gold */
