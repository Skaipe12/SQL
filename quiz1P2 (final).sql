CREATE database Pasteleria;
use Pasteleria;

CREATE table empleado(
	codigo serial primary key not null,
    nombre varchar(40) not null,
    apellido varchar(40) not null,
    salario int not null
);

CREATE table pastelero(
	codigo_empleado serial not null,
    pasaporte varchar(50) not null,
    pais_origen varchar(40) not null,
    experiencia int not null,
    CHECK(experiencia>=5)
);

alter table pastelero add foreign key(codigo_empleado) references empleado(codigo);

CREATE table decorador(
	codigo_empleado serial not null,
    constraint codigo_empleado foreign key (codigo_empleado) references empleado(codigo)
);



CREATE table cliente(
	cedula serial primary key not null,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    direccion varchar(50) not null,
    fecha_nacimiento date not null
);

CREATE table ingrediente (
	nombre varchar(50) primary key not null,
    unidad_medida varchar(50) not null
);

alter table ingrediente add cliente_id serial not null;
alter table ingrediente add empleado_id serial not null;

alter table ingrediente add foreign key(cliente_id) references cliente(cedula);
alter table ingrediente add foreign key(empleado_id) references empleado(codigo);

create table horno(
	codigo serial primary key not null,
    marca varchar(30) not null,
    valor_estimado int not null
);

create table pastel(
	id serial primary key not null,
    ingrediente_id varchar(50) not null, 
    nombre_pastel varchar(50),
    tipo_pastel varchar(50) not null
);

alter table pastel add horno_id serial;
alter table pastel add foreign key(ingrediente_id) references ingrediente(nombre);
alter table pastel add foreign key(horno_id) references horno(codigo);


create table ingrediente_X_pastel(
    id serial primary key,
    nombre_ingrediente varchar(50) not null
    
);

alter table ingrediente_X_pastel add pastel_id serial;

alter table ingrediente_X_pastel add foreign key(nombre_ingrediente) references ingrediente(nombre);
alter table ingrediente_X_pastel add foreign key(pastel_id) references pastel(id);

CREATE table decoracion(
	id serial primary key not null,
    fecha_inicio date not null,
    hora_inicio time not null,
    fecha_fin date not null,
    hora_fin time not null,
    peso_final FLOAT not null
);



alter table decoracion add pastel_id serial not null;
alter table decoracion add decorador_id serial not null;

alter table decoracion add foreign key (pastel_id) references pastel(id);
alter table decoracion add foreign key (decorador_id) references decorador(codigo_empleado);

create table pedido(
	codigo bigint(20) primary key not null,
    nombre_pastel varchar(50),
    tipo_pastel varchar(50),
    peso_minimo float not null,
    fecha_solicitud date not null,
    fecha_entrega date not null,
    descripcion varchar(60),
    id_cliente bigint(20) not null,
    id_empleado bigint(20) not null
);

use Pasteleria;

alter table pedido add foreign key (id_cliente) references cliente(cedula);
alter table pedido add foreign key (id_empleado) references empleado(codigo);

create table empleado_x_pedido(
	id bigint(20) primary key not null,
    empleado_id bigint(20) not null,
    pedido_id bigint(20) not null
);

alter table empleado_x_pedido  add foreign key (empleado_id) references empleado(codigo);
alter table empleado_x_pedido  add foreign key (pedido_id) references pedido(codigo);

alter table decorador add foreign key (codigo_empleado) references empleado(codigo);

alter table pastelero add foreign key (codigo_empleado) references empleado(codigo);


select * from pedido;








