INSERT INTO episodio (idepisodio, nombre, trial609)
VALUES
    (1, 'El poder del Super Saiyan', NULL),
    (2, 'La derrota de Freezer', NULL),
    (3, 'El despertar de Cell', NULL),
    (4, 'El renacer de Majin Buu', NULL),
    (5, 'El inicio de una gran aventura', NULL),
    (6, 'La búsqueda de las Esferas del Dragón Negras', NULL),
    (7, 'El Torneo del Poder', NULL),
    (8, 'La llegada de los Saiyans', NULL),
    (9, 'La venganza de Cooler', NULL),
    (10, 'El enfrentamiento contra los Androides', NULL),
    (11, 'El regreso de Majin Buu', NULL),
    (12, 'La competencia en el Torneo de Artes Marciales', NULL),
    (13, 'El desafío de los dragones oscuros', NULL),
    (14, 'La batalla contra el Universo 7', NULL),
    (15, 'El poder del Super Saiyan 2', NULL);
	
select * from episodio;

INSERT INTO serie (idserie, nombre, descripcion, episodio_idepisodio)
VALUES
    (1, 'Dragon Ball Z', 'Una serie de acción y aventura que sigue las batallas épicas de Goku y sus amigos contra poderosos enemigos.', 1),
    (2, 'Dragon Ball GT', 'Una serie que continúa las aventuras de Goku cuando se convierte en niño nuevamente y busca las Esferas del Dragón Negras.', 6),
    (3, 'Dragon Ball Super', 'Una serie que narra la historia de Goku y sus aliados mientras enfrentan nuevos desafíos, como el Torneo del Poder.', 7),
    (4, 'Dragon Ball', 'La serie original que sigue las aventuras de Goku desde su infancia hasta su vida adulta, luchando contra enemigos y buscando las Esferas del Dragón.', 5),
    (5, 'Dragon Ball Kai', 'Una versión remasterizada de Dragon Ball Z que presenta una calidad de imagen y sonido mejorada.', 9),
    (6, 'Dragon Ball Heroes', 'Una serie basada en el juego de arcade del mismo nombre, donde los personajes de Dragon Ball se enfrentan en batallas épicas.', 12);

select * from serie;

INSERT INTO saga (idsaga, nombre, descripcion, serie_idserie, serie_episodio_idepisodio)
VALUES
    (1, 'Saga de Saiyan', 'La saga que introduce a los Saiyans y su llegada a la Tierra, enfrentando a Goku y sus amigos a poderosos adversarios.', 1, 1),
    (2, 'Saga de Freezer', 'La saga en la que Goku y sus aliados luchan contra Freezer y su imperio galáctico para proteger el universo.', 2, 6),
    (3, 'Saga de Cell', 'La saga en la que Goku y los demás se enfrentan a Cell, un bioandroide que amenaza con destruir la Tierra.', 3, 7),
    (4, 'Saga de Majin Buu', 'La saga en la que Goku y los demás luchan contra Majin Buu, un ser increíblemente poderoso y destructivo.', 4, 5),
    (5, 'Saga de Pilaf', 'La saga que sigue las aventuras de Goku cuando era niño y se embarca en la búsqueda de las Esferas del Dragón.', 5, 9),
    (6, 'Saga de los Dragones Oscuros', 'La saga en la que Goku y sus amigos se enfrentan a los Dragones Oscuros que amenazan con destruir el mundo.', 6, 12);


select * from saga;


INSERT INTO personaje (idpersonajes, nombre, comidafav, poderpelea, ismuerto)
VALUES
    (1, 'Goku', 'Arroz frito', 9000, false),
    (2, 'Vegeta', 'Ternera', 8500, false),
    (3, 'Gohan', 'Pescado a la parrilla', 7000, false),
    (4, 'Piccolo', 'Sushi', 6000, false),
    (5, 'Trunks', 'Pizza', 8000, false),
    (6, 'Goten', 'Helado', 5000, false),
    (7, 'Krillin', 'Tofu', 3000, false),
    (8, 'Bulma', 'Hamburguesa', 1000, false),
    (9, 'Chi-Chi', 'Fideos', 2000, false),
    (10, 'Yamcha', 'Albóndigas', 2500, false),
    (11, 'Raditz', 'Sopa de calabaza', 4000, true),
    (12, 'Freezer', 'Helado de vainilla', 10000, true),
    (13, 'Cell', 'Carne humana', 8000, true),
    (14, 'Majin Buu', 'Caramelos', 9000, true),
    (15, 'Nappa', 'Pollo asado', 6000, true),
    (16, 'Android 17', 'Brochetas de verduras', 7000, false),
    (17, 'Android 18', 'Batidos de frutas', 7000, false),
    (18, 'Milk', 'Pastel de chocolate', 3000, false),
    (19, 'Mr. Satan', 'Chuletas de cerdo', 1000, false),
    (20, 'Tien Shinhan', 'Ensalada de algas', 4000, false),
    (21, 'Babidi', 'Sangre de víctimas', 5000, true),
    (22, 'Dabura', 'Frutas exóticas', 6000, true),
    (23, 'Raditz', 'Sopa de calabaza', 4000, true),
    (24, 'Broly', 'Carnes asadas', 12000, true),
    (25, 'Beerus', 'Pudín', 15000, false),
    (26, 'Whis', 'Manzanas', 13000, false),
    (27, 'Jiren', 'Arroz blanco', 16000, false),
    (28, 'Zamasu', 'Té verde', 14000, true),
    (29, 'Hit', 'Sushi de langosta', 11000, false),
    (30, 'Guldo', 'Galletas', 3000, true);
	
select * from personaje;


INSERT INTO villano (idvillano, raza, personajes_idpersonajes)
VALUES
    (1, 'Saiyan', 2),
    (2, 'Namekiano', 4),
    (3, 'Androide', 11),
    (4, 'Demonio', 12),
    (5, 'Saiyan', 13),
    (6, 'Majin', 14),
    (7, 'Saiyan', 15),
    (8, 'Namekiano', 22),
    (9, 'Androide', 28),
    (10, 'Alienígena', 30);
	
INSERT INTO heroe (idheroe, raza, personajes_idpersonajes)
VALUES
    (1, 'Saiyan', 1),
    (2, 'Saiyan', 3),
    (3, 'Saiyan', 5),
    (4, 'Saiyan', 6),
    (5, 'Humano', 7),
    (6, 'Humano', 8),
    (7, 'Humano', 9),
    (8, 'Humano', 10),
    (9, 'Androide', 16),
    (10, 'Androide', 17),
    (11, 'Humano', 18),
    (12, 'Humano', 19),
    (13, 'Humano', 20),
    (14, 'Majin', 14),
    (15, 'Majin', 21),
    (16, 'Divinidad', 25),
    (17, 'Divinidad', 26),
    (18, 'Divinidad', 27),
    (19, 'Divinidad', 29);
	
INSERT INTO lugar (idlugar, nombre)
VALUES
    (1, 'Kame House'),
    (2, 'Monte Paoz'),
    (3, 'Planeta Namek'),
    (4, 'Templo de Kamisama'),
    (5, 'Capsule Corporation'),
    (6, 'Tierra Sagrada de Karin'),
    (7, 'Planeta Vegeta'),
    (8, 'Planeta Tierra'),
    (9, 'Palacio de Dende'),
    (10, 'Planeta Freezer'),
    (11, 'Campo de Entrenamiento de las Fuerzas Ginyu');
	
select * from lugar;

INSERT INTO pelea (idpelea, duracion)
VALUES
    (1, '00:05:23'),
    (2, '00:12:10'),
    (3, '00:08:45'),
    (4, '00:20:18'),
    (5, '00:15:02'),
    (6, '00:06:37'),
    (7, '00:18:12'),
    (8, '00:10:50'),
    (9, '00:07:25'),
    (10, '00:14:50');
	
INSERT INTO pelea_has_personajes (pelea_has_personajesid, personaje_idganador, personaje_idperdedor, pelea_id)
VALUES
    (1, 2, 5, 1),
    (2, 3, 6, 2),
    (3, 7, 9, 3),
    (4, 4, 8, 4),
    (5, 10, 11, 5),
    (6, 12, 13, 6),
    (7, 14, 15, 7),
    (8, 16, 18, 8),
    (9, 19, 20, 9),
    (10, 21, 22, 10);

INSERT INTO personajes_has_lugar (personajes_lugarid, lugar_idlugar, personaje_idpersonaje)
VALUES
    (1, 1, 1),
    (2, 2, 1),
    (3, 3, 1),
    (4, 4, 2),
    (5, 5, 2),
    (6, 6, 2),
    (7, 7, 3),
    (8, 8, 3),
    (9, 9, 3),
    (10, 10, 4),
    (11, 11, 4),
    (12, 11, 4),
	(13, 1, 5),
    (14, 2, 5),
    (15, 3, 5),
    (16, 4, 6),
    (17, 5, 6),
    (18, 6, 6),
    (19, 7, 7),
    (20, 8, 7),
    (21, 9, 7),
    (22, 10, 8),
    (23, 11, 8),
    (24, 1, 9),
    (25, 2, 9);
