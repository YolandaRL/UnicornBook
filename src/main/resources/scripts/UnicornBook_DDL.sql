/*
CREATE DATABASE unicornbook;
USE unicornbook;
*/
CREATE TABLE tipo_entrega(
	id_tipo_entrega int PRIMARY KEY auto_increment,
	tipo_entrega varchar(25) NOT NULL
);

CREATE TABLE tipo_operacion(
	id_tipo_operacion int PRIMARY KEY auto_increment,
	tipo_operacion varchar(25) NOT NULL
);

CREATE TABLE estado(
	id_estado int PRIMARY KEY auto_increment,
	estado varchar(25) NOT NULL
);

CREATE TABLE rol(
	id_rol int PRIMARY KEY auto_increment,
	nombre_rol varchar(25) NOT NULL
);

CREATE TABLE tematica(
	id_tematica int PRIMARY KEY auto_increment,
	nombre varchar(50) NOT NULL,
	descripcion varchar(500)
);

CREATE TABLE editorial(
	id_editorial int PRIMARY KEY auto_increment,
	nombre varchar(50) NOT NULL,
	direccion varchar(100),
	provincia varchar(50),
	ccaa varchar(25),
	telefono1 numeric(9),
	telefono2 numeric(9),
	enlace_web varchar(100),
	descripcion varchar(500)
);

CREATE TABLE coleccion(
	id_coleccion int PRIMARY KEY auto_increment,
	nombre varchar(50) NOT NULL,
	descripcion varchar(500)
);

CREATE TABLE libro(
	id_libro int PRIMARY KEY auto_increment,
	isbn numeric(13) NOT NULL UNIQUE, 
	titulo varchar(100),
	subtitulo varchar(100),
	sinopsis varchar(500),
	paginas int,
	formato varchar(50),
	fecha_publicacion DATE,
	fecha_edicion DATE,
	fecha_disponible DATE,
	visible boolean,
	idioma varchar(50),
	notas varchar(500),
	stock int,
	precio float(6,2),
	link_portada varchar(500),
	id_editorial int,
	FOREIGN KEY (id_editorial) REFERENCES editorial(id_editorial)
		ON UPDATE CASCADE 
		ON DELETE CASCADE
);

CREATE TABLE autor(
	id_autor int PRIMARY KEY auto_increment,
	nombre varchar(25) NOT NULL,
	apellido1 varchar(25),
	apellido2 varchar(25),
	biografia varchar(500),
	link_foto varchar(500) 
);

CREATE TABLE libro_autor(
	id_libro int NOT NULL,
	id_autor int NOT NULL,
	PRIMARY KEY (id_libro, id_autor),
	FOREIGN KEY (id_libro) REFERENCES libro(id_libro)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (id_autor) REFERENCES autor(id_autor)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE libro_tematica(
	id_libro int NOT NULL,
	id_tematica int NOT NULL, 
	PRIMARY KEY (id_libro, id_tematica),
	FOREIGN KEY (id_libro) REFERENCES libro(id_libro)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (id_tematica) REFERENCES tematica(id_tematica)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE libro_coleccion(
	id_libro int NOT NULL,
	id_coleccion int NOT NULL,
	PRIMARY KEY (id_libro, id_coleccion),
	FOREIGN KEY (id_libro) REFERENCES libro(id_libro)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (id_coleccion) REFERENCES coleccion(id_coleccion)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE usuario(
	id_usuario int PRIMARY KEY auto_increment,
	usuario varchar(25) UNIQUE NOT NULL, 
	password varchar(10) NOT NULL, 
	email varchar(50) UNIQUE NOT NULL,
	dni char(9),
	nombre varchar(25),
	apellido1 varchar(25),
	apellido2 varchar(25),
	telefono1 numeric(9),
	telefono2 numeric(9),
	fecha_nacimiento DATE
);

CREATE TABLE usuario_rol(
	id_usuario int NOT NULL,
	id_rol int NOT NULL,
	PRIMARY KEY (id_usuario, id_rol),
	FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (id_rol) REFERENCES rol(id_rol)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE direccion(
	id_direccion int PRIMARY KEY auto_increment,
	nombre_personalizado varchar(50),
	nombre_receptor varchar(25) NOT NULL,
	apellido1_receptor varchar(25),
	apellido2_receptor varchar(25),
	direccion varchar(100) NOT NULL,
	codigo_postal numeric(5),
	poblacion varchar(50),
	provincia varchar(25),
	pais varchar(50),
	id_usuario int,
	FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE tarjeta(
	id_tarjeta int PRIMARY KEY auto_increment,
	nombre_personalizado varchar(50),
	numero numeric(16) NOT NULL,
	tipo_tarjeta varchar(25),
	mes_caducidad numeric(2) NOT NULL,
	ano_caducidad numeric(2) NOT NULL,
	cvv numeric(3) NOT NULL,
	id_usuario int,
	FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE comentario(
	id_comentario int PRIMARY KEY auto_increment,
	fecha_comentario date NOT NULL,
	hora_comentario time,
	comentario varchar(500),
	estrellas numeric(1),
	id_estado int,
	FOREIGN KEY (id_estado) REFERENCES estado(id_estado)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE compra(
	id_compra int PRIMARY KEY auto_increment,
	fecha_compra date NOT NULL,
	hora_compra time NOT NULL,
	fecha_entrega date,
	metodo_pago float(6,2),
	id_estado int,
	id_usuario int NOT NULL,
	id_tipo_entrega int NOT NULL,
	id_direccion int,
	id_tarjeta int,
	FOREIGN KEY (id_estado) REFERENCES estado(id_estado)
		ON UPDATE CASCADE
		ON DELETE CASCADE,	
	FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (id_tipo_entrega) REFERENCES tipo_entrega(id_tipo_entrega)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (id_tarjeta) REFERENCES tarjeta(id_tarjeta)
		ON UPDATE CASCADE
		ON DELETE CASCADE	
);

CREATE TABLE detalle_compra(
	id_compra int NOT NULL,
	id_libro int NOT NULL,
	cantidad int NOT NULL, 
	porcentaje_descuento numeric(2),
	id_comentario int,
	PRIMARY KEY (id_compra, id_libro),
	FOREIGN KEY (id_comentario) REFERENCES comentario(id_comentario)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (id_compra) REFERENCES compra(id_compra)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (id_libro) REFERENCES libro(id_libro)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE encargo(
	id_encargo int PRIMARY KEY auto_increment,
	isbn numeric(13),
	titulo varchar(100),
	cantidad int,
	fecha_encargo date,
	hora_encargo time,
	fecha_fin date,
	id_estado int, 
	id_tipo_entrega int, 
	id_libro int, 
	id_usuario int NOT NULL,
	id_tipo_operacion int NOT NULL, 
	FOREIGN KEY (id_estado) REFERENCES estado(id_estado)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (id_tipo_entrega) REFERENCES tipo_entrega(id_tipo_entrega)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (id_libro) REFERENCES libro(id_libro)
		ON UPDATE CASCADE
		ON DELETE CASCADE, 
	FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (id_tipo_operacion) REFERENCES tipo_operacion(id_tipo_operacion)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

CREATE TABLE consulta(
	id_consulta int PRIMARY KEY auto_increment,
	nombre varchar(25) NOT NULL,
	apellido1 varchar(25) NOT NULL,
	apellido2 varchar(25),
	email varchar(50),
	telefono numeric(9),
	fecha_consulta date NOT NULL,
	hora_consulta time,
	fecha_fin date,
	consulta varchar(1000) NOT NULL,
	id_usuario int,
	id_estado int, 
	id_tipo_operacion int NOT NULL,
	FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (id_estado) REFERENCES estado(id_estado)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (id_tipo_operacion) REFERENCES tipo_operacion(id_tipo_operacion)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);

/*
--Es necesario añadir algun campo en la tabla libro? Para permitir reservar?
CREATE TABLE reserva(
	id_reserva int PRIMARY KEY auto_increment,
	fecha_reserva date NOT NULL,
	hora_reserva time NOT NULL,
	fecha_fin date,
	id_tipo_entrega int,
	id_libro int NOT NULL,
	id_usuario int NOT NULL,
	id_direccion int,
	id_estado int,
	FOREIGN KEY (id_tipo_entrega) REFERENCES tipo_entrega(id_tipo_entrega)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (id_libro) REFERENCES libro(id_libro)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (id_direccion) REFERENCES direccion(id_direccion)
		ON UPDATE CASCADE
		ON DELETE CASCADE,
	FOREIGN KEY (id_estado) REFERENCES estado(id_estado)
		ON UPDATE CASCADE
		ON DELETE CASCADE
);*/

