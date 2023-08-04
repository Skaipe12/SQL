create database videojuegos_elsantuareño;

use videojuegos_elsantuareño;

create table comprador(
	cedula bigint(20) primary key not null,
    nombre varchar(45) not null
);

create table genero(
	id bigint(20) primary key not null,
    tipo_genero varchar(45) not null
);

create table consola(
	id bigint(20) primary key not null,
    nombre varchar(45) not null
);

create table publisher(
	id bigint(20) primary key not null,
    nombre varchar(45) not null
);

create table juego (
	id bigint(20) primary key not null,
    nombre_juego varchar(50) not null,
    anio year not null,
    precio float not null,
    ventas int not null
);

ALTER table juego add publisher_id bigint(20);
ALTER table juego add foreign key (publisher_id) references publisher(id);


create table juego_x_consola(
	juego_id bigint(20) not null,
    consola_id bigint(20) not null,
    CONSTRAINT juego_id foreign key (juego_id) references juego(id),
    CONSTRAINT consola_id foreign key (consola_id) references consola(id)
);

create table juego_x_comprador(
	id_juego bigint(20) not null,
    comprador_cedula bigint(20) not null,
    CONSTRAINT id_juego foreign key (id_juego) references juego(id),
    CONSTRAINT comprador_cedula foreign key (comprador_cedula) references comprador(cedula)
);

create table juego_x_genero(
	juegoID bigint(20) not null,
	genero_id bigint(20) not null,
    CONSTRAINT juegoID foreign key (juegoID) references juego(id),
    CONSTRAINT genero_id foreign key (genero_id) references genero(id)
);

