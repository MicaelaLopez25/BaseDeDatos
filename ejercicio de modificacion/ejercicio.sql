-- insertar artista
-- INSERT INTO
INSERT INTO artists (Name) 
VALUES ("Laufey");

--insertar album de artista
INSERT INTO albums (Title,ArtistId)
VALUES ('Bewitched','276');

--inserta 4 canciones de artista
INSERT INTO tracks (name ,AlbumId, Composer, Milliseconds,UnitPrice,MediaTypeId)
VALUES ('Promise','348','Laufey','212400','0.99','1'),
       ('From the start','348','Laufey','210000','0.99','1'),
       ('Second best','348','Laufey','195000','0.99','1'),	   
       ('Serendipity','348','Laufey','204000','0.99','1');	   	   

-- modifique las 4 canciones en genero pq no les puse y ahi daba null
-- UPDATE
UPDATE tracks
SET GenreId = '2'
WHERE Composer = 'Laufey';

-- con esto verificamos si estan los cambios del update q hicimos
SELECT name, Composer,GenreId from tracks
WHERE Composer = 'Laufey'

--Delete, borrar registros , borra reglon entero, podemos usar OR si necesitamos borrar otro el and no sirve
--DELETE FROM

-- borrar todo lo q agregamos en orden al reves 

DELETE FROM tracks
 WHERE Name = 'Promise' or name = 'From the start';
 
DELETE FROM tracks
 WHERE Name = 'Second best' or name = 'Serendipity';
 --primero borrando las canciones
 -- segundo borra album

 DELETE FROM albums
WHERE Title = 'Bewitched' or ArtistId = '276'
-- tercero borrar artista

DELETE FROM artists
WHERE ArtistId = '276'
 