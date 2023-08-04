--Consulta de los personajes de la serie.
SELECT * FROM personaje;

--Consulta de las peleas de la serie
SELECT pelea.idpelea, pelea.duracion,
       personaje_ganador.nombre AS ganador, personaje_perdedor.nombre AS perdedor
FROM pelea
JOIN pelea_has_personajes ON pelea.idpelea = pelea_has_personajes.pelea_id
JOIN personaje AS personaje_ganador ON pelea_has_personajes.personaje_idganador = personaje_ganador.idpersonajes
JOIN personaje AS personaje_perdedor ON pelea_has_personajes.personaje_idperdedor = personaje_perdedor.idpersonajes;

--Consulta de los ganadores de las peleas
SELECT pelea.idpelea, pelea.duracion, pelea_has_personajes.pelea_has_personajesid,
       personaje_ganador.nombre AS ganador
FROM pelea
JOIN pelea_has_personajes ON pelea.idpelea = pelea_has_personajes.pelea_id
JOIN personaje AS personaje_ganador ON pelea_has_personajes.personaje_idganador = personaje_ganador.idpersonajes;

--Consulta de los personajes asesinados en la serie.
select idpersonajes,nombre,poderpelea,ismuerto from personaje where personaje.ismuerto IS true;

--Consulta de los lugares que han visitado los personajes.
SELECT personaje.nombre, lugar.nombre AS lugar_visitado
FROM personaje
JOIN personajes_has_lugar ON personaje.idpersonajes = personajes_has_lugar.personaje_idpersonaje
JOIN lugar ON personajes_has_lugar.lugar_idlugar = lugar.idlugar;

--Consulta de la comida favorita de los personajes.
select nombre,comidafav from personaje;
--Consulta de las técnicas usadas en la serie.
select * from tecnica;
--Consulta de los personajes ordenados por su poder de pelea.
select nombre, poderpelea from personaje
order by poderpelea desc;
--Consulta de los personajes que tienen una técnica especial específica
SELECT personaje.idpersonajes, personaje.nombre,tecnica.nombre_tecnica
FROM personaje
INNER JOIN personaje_has_tecnica ON personaje.idpersonajes = personaje_has_tecnica.personaje_id
INNER JOIN tecnica ON personaje_has_tecnica.tecnica_id = tecnica.idtecnica
WHERE tecnica.is_especial = true;

