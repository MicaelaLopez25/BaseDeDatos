-- Borrar todos los géneros que tengan menos de 50 canciones 
-- (borrar todo lo necesario para poder borrar estos géneros)




DELETE from playlist_track WHERE TrackId in (SELECT GenreId from tracks tr
 GROUP by  tr.GenreId 
 HAVING count(tr.TrackId) < 50
)

DELETE from invoice_items WHERE TrackId in (SELECT GenreId from tracks tr
 GROUP by  tr.GenreId 
 HAVING count(tr.TrackId) < 50
)

DELETE from tracks WHERE TrackId in (SELECT GenreId FROM tracks 
 GROUP by GenreId 
 HAVING count(Name) < 50
)


DELETE from genres WHERE GenreId in (SELECT TrackId from tracks tr
 GROUP by  tr.GenreId 
 HAVING count(tr.TrackId) < 50
)

-- no me borra en niguna fila (tengo que agregar otro selec adentro del select)

UPDATE tracks SET genreId = NULL
	WHERE GenreId in (select g.genreId FROM genres g LEFT JOIN tracks t 
									ON g.GenreId = t.GenreId 
									GROUP BY g.GenreId 
									HAVING count(t.trackId) < 50)