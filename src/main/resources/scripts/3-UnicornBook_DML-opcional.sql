--------------------------------------------------------------------------
-- Puebla las BDD con libros, usuario, compreas y comentarios ficticios --
--------------------------------------------------------------------------

-- USUARIO
INSERT INTO USUARIO (USUARIO, PASSWORD, EMAIL, DNI, NOMBRE, APELLIDO1, APELLIDO2, TELEFONO1, TELEFONO2, FECHA_NACIMIENTO, ACTIVO) VALUES ('paula_78', '$2a$10$ZC3t212GhY4EK9PAJV4lB.IImYxl4LIl.yAKsh0gqGezHNrATdpw.', '78zpgw6nyr@mail.com', '29017843P', 'Paula', 'Pizarro', 'Sancho', 794919943, null, STR_TO_DATE('5-2-1978', '%d-%m-%Y'), 1);
INSERT INTO USUARIO (USUARIO, PASSWORD, EMAIL, DNI, NOMBRE, APELLIDO1, APELLIDO2, TELEFONO1, TELEFONO2, FECHA_NACIMIENTO, ACTIVO) VALUES ('mariana_60', '$2a$10$ZC3t212GhY4EK9PAJV4lB.IImYxl4LIl.yAKsh0gqGezHNrATdpw.', 'k98cu5sxb@teacher.com', '71273104Z', 'Mariana', 'Sosa', 'Casado', 629808776, 633642667, STR_TO_DATE('23-3-1960', '%d-%m-%Y'), 1);
INSERT INTO USUARIO (USUARIO, PASSWORD, EMAIL, DNI, NOMBRE, APELLIDO1, APELLIDO2, TELEFONO1, TELEFONO2, FECHA_NACIMIENTO, ACTIVO) VALUES ('ernesto_78', '$2a$10$ZC3t212GhY4EK9PAJV4lB.IImYxl4LIl.yAKsh0gqGezHNrATdpw.', 'wtbj1ira@lycos.at', '14036827L', 'Ernesto', 'Aviles', 'Serna', 794383947, null, STR_TO_DATE('18-2-1978', '%d-%m-%Y'), 1);
INSERT INTO USUARIO (USUARIO, PASSWORD, EMAIL, DNI, NOMBRE, APELLIDO1, APELLIDO2, TELEFONO1, TELEFONO2, FECHA_NACIMIENTO, ACTIVO) VALUES ('youssef_90', '$2a$10$ZC3t212GhY4EK9PAJV4lB.IImYxl4LIl.yAKsh0gqGezHNrATdpw.', 'hyxlca2gp@netscape.com', '12295964A', 'Youssef', 'Zamora', 'Polo', 740789343, 749974866, STR_TO_DATE('15-11-1990', '%d-%m-%Y'), 1);
INSERT INTO USUARIO (USUARIO, PASSWORD, EMAIL, DNI, NOMBRE, APELLIDO1, APELLIDO2, TELEFONO1, TELEFONO2, FECHA_NACIMIENTO, ACTIVO) VALUES ('juancarlos_74', '$2a$10$ZC3t212GhY4EK9PAJV4lB.IImYxl4LIl.yAKsh0gqGezHNrATdpw.', 'lafhf6dnx@msn.com', '89701420V', 'Juan Carlos', 'Marques', 'Bonet', 751869709, null, STR_TO_DATE('9-3-1974', '%d-%m-%Y'), 1);
INSERT INTO USUARIO (USUARIO, PASSWORD, EMAIL, DNI, NOMBRE, APELLIDO1, APELLIDO2, TELEFONO1, TELEFONO2, FECHA_NACIMIENTO, ACTIVO) VALUES ('mariajulia_01', '$2a$10$ZC3t212GhY4EK9PAJV4lB.IImYxl4LIl.yAKsh0gqGezHNrATdpw.', 'guojd81j@msn.com', '94696058K', 'Maria Julia', 'Romera', 'Carretero', 798097305, null, STR_TO_DATE('25-4-2001', '%d-%m-%Y'), 1);
INSERT INTO USUARIO (USUARIO, PASSWORD, EMAIL, DNI, NOMBRE, APELLIDO1, APELLIDO2, TELEFONO1, TELEFONO2, FECHA_NACIMIENTO, ACTIVO) VALUES ('fernando_99', '$2a$10$ZC3t212GhY4EK9PAJV4lB.IImYxl4LIl.yAKsh0gqGezHNrATdpw.', 'u0v6n1wp5@email.com', '60203902E', 'Fernando', 'Alcala', 'Caro', 607846705, null, STR_TO_DATE('8-3-1999', '%d-%m-%Y'), 1);
INSERT INTO USUARIO (USUARIO, PASSWORD, EMAIL, DNI, NOMBRE, APELLIDO1, APELLIDO2, TELEFONO1, TELEFONO2, FECHA_NACIMIENTO, ACTIVO) VALUES ('begoña_61', '$2a$10$ZC3t212GhY4EK9PAJV4lB.IImYxl4LIl.yAKsh0gqGezHNrATdpw.', 'idl6w5ah1@caramail.com', '40487227M', 'Begoña', 'Murillo', 'Navarrete', 709426857, 612316847, STR_TO_DATE('2-3-1961', '%d-%m-%Y'), 1);
INSERT INTO USUARIO (USUARIO, PASSWORD, EMAIL, DNI, NOMBRE, APELLIDO1, APELLIDO2, TELEFONO1, TELEFONO2, FECHA_NACIMIENTO, ACTIVO) VALUES ('elia_73', '$2a$10$ZC3t212GhY4EK9PAJV4lB.IImYxl4LIl.yAKsh0gqGezHNrATdpw.', 't2o4ltw44@scientist.com', '32530513A', 'Elia', 'Guzman', 'Rueda', 613888649, 612316847, STR_TO_DATE('21-8-1973', '%d-%m-%Y'), 1);
INSERT INTO USUARIO (USUARIO, PASSWORD, EMAIL, DNI, NOMBRE, APELLIDO1, APELLIDO2, TELEFONO1, TELEFONO2, FECHA_NACIMIENTO, ACTIVO) VALUES ('pablo_95', '$2a$10$gSAHbVBoditCrVJAiQ6qnOrek305NLQXuqtZReGa4XGR.HhttSfru', '23432jh234@msn.com', '86514566C', 'Pablo', 'Caceres', 'Arroyo', 607535538, null, STR_TO_DATE('1-8-1961', '%d-%m-%Y'), 1);

-- USUARIO_ROL
INSERT INTO USUARIO_ROL (ID_USUARIO, ID_ROL) VALUES (2, 2);
INSERT INTO USUARIO_ROL (ID_USUARIO, ID_ROL) VALUES (3, 2);
INSERT INTO USUARIO_ROL (ID_USUARIO, ID_ROL) VALUES (4, 2);
INSERT INTO USUARIO_ROL (ID_USUARIO, ID_ROL) VALUES (5, 2);
INSERT INTO USUARIO_ROL (ID_USUARIO, ID_ROL) VALUES (6, 2);
INSERT INTO USUARIO_ROL (ID_USUARIO, ID_ROL) VALUES (7, 2);
INSERT INTO USUARIO_ROL (ID_USUARIO, ID_ROL) VALUES (8, 2);
INSERT INTO USUARIO_ROL (ID_USUARIO, ID_ROL) VALUES (9, 2);
INSERT INTO USUARIO_ROL (ID_USUARIO, ID_ROL) VALUES (10, 2);
INSERT INTO USUARIO_ROL (ID_USUARIO, ID_ROL) VALUES (11, 2);

-- DIRECCION
INSERT INTO DIRECCION (NOMBRE_PERSONALIZADO, NOMBRE_RECEPTOR, APELLIDO1_RECEPTOR, APELLIDO2_RECEPTOR, DIRECCION, CODIGO_POSTAL, POBLACION, PROVINCIA, PAIS, ID_USUARIO) VALUES ('Principal', 'Paula', 'Pizarro', 'Sancho', 'Estrada Real, 66', 17195, 'Rabós', 'Girona', 'España', 2);
INSERT INTO DIRECCION (NOMBRE_PERSONALIZADO, NOMBRE_RECEPTOR, APELLIDO1_RECEPTOR, APELLIDO2_RECEPTOR, DIRECCION, CODIGO_POSTAL, POBLACION, PROVINCIA, PAIS, ID_USUARIO) VALUES ('Principal', 'Mariana', 'Sosa', 'Casado', 'Campo Catalunya, 86', 31084, 'Castejón', 'Navarra', 'España', 3);
INSERT INTO DIRECCION (NOMBRE_PERSONALIZADO, NOMBRE_RECEPTOR, APELLIDO1_RECEPTOR, APELLIDO2_RECEPTOR, DIRECCION, CODIGO_POSTAL, POBLACION, PROVINCIA, PAIS, ID_USUARIO) VALUES ('Principal', 'Ernesto', 'Aviles', 'Serna', 'Plaça Nueva, 28', 21735, 'Moguer', 'Huelva', 'España', 4);
INSERT INTO DIRECCION (NOMBRE_PERSONALIZADO, NOMBRE_RECEPTOR, APELLIDO1_RECEPTOR, APELLIDO2_RECEPTOR, DIRECCION, CODIGO_POSTAL, POBLACION, PROVINCIA, PAIS, ID_USUARIO) VALUES ('Principal', 'Youssef', 'Zamora', 'Polo', 'Passatge Madrid, 40', 17270, 'Arbúcies', 'Girona', 'España', 5);
INSERT INTO DIRECCION (NOMBRE_PERSONALIZADO, NOMBRE_RECEPTOR, APELLIDO1_RECEPTOR, APELLIDO2_RECEPTOR, DIRECCION, CODIGO_POSTAL, POBLACION, PROVINCIA, PAIS, ID_USUARIO) VALUES ('Principal', 'Juan Carlos', 'Marques', 'Bonet', 'Polígono Iglesia, 80', 43650, 'Gandesa', 'Tarragona', 'España', 6);
INSERT INTO DIRECCION (NOMBRE_PERSONALIZADO, NOMBRE_RECEPTOR, APELLIDO1_RECEPTOR, APELLIDO2_RECEPTOR, DIRECCION, CODIGO_POSTAL, POBLACION, PROVINCIA, PAIS, ID_USUARIO) VALUES ('Principal', 'Maria Julia', 'Romera', 'Carretero', 'Carrer Iglesia, 68', 44106, 'Griegos', 'Teruel', 'España', 7);
INSERT INTO DIRECCION (NOMBRE_PERSONALIZADO, NOMBRE_RECEPTOR, APELLIDO1_RECEPTOR, APELLIDO2_RECEPTOR, DIRECCION, CODIGO_POSTAL, POBLACION, PROVINCIA, PAIS, ID_USUARIO) VALUES ('Principal', 'Fernando', 'Alcala', 'Caro', 'Paseo Mayor, 61', 19816, 'Tierzo', 'Guadalajara', 'España', 8);
INSERT INTO DIRECCION (NOMBRE_PERSONALIZADO, NOMBRE_RECEPTOR, APELLIDO1_RECEPTOR, APELLIDO2_RECEPTOR, DIRECCION, CODIGO_POSTAL, POBLACION, PROVINCIA, PAIS, ID_USUARIO) VALUES ('Principal', 'Begoña', 'Murillo', 'Navarrete', 'Praza Horno, 53', 50378, 'Aguilón', 'Zaragoza', 'España', 9);
INSERT INTO DIRECCION (NOMBRE_PERSONALIZADO, NOMBRE_RECEPTOR, APELLIDO1_RECEPTOR, APELLIDO2_RECEPTOR, DIRECCION, CODIGO_POSTAL, POBLACION, PROVINCIA, PAIS, ID_USUARIO) VALUES ('Principal', 'Elia', 'Guzman', 'Rueda', 'Sector Horno, 34', 46711, 'Miramar', 'Valencia', 'España', 10);
INSERT INTO DIRECCION (NOMBRE_PERSONALIZADO, NOMBRE_RECEPTOR, APELLIDO1_RECEPTOR, APELLIDO2_RECEPTOR, DIRECCION, CODIGO_POSTAL, POBLACION, PROVINCIA, PAIS, ID_USUARIO) VALUES ('Principal', 'Pablo', 'Caceres', 'Arroyo', 'VIA IGLESIA, 34', 19289, 'VALDECONCHA', 'GUADALAJARA', 'España', 11);

-- TARJETA
INSERT INTO TARJETA (NOMBRE_PERSONALIZADO, NUMERO, MES_CADUCIDAD, ANO_CADUCIDAD, CVV, ID_USUARIO, ID_TIPO_TARJETA) VALUES ('Principal', 4347995472915649, 9, 24, 102, 2, 1);
INSERT INTO TARJETA (NOMBRE_PERSONALIZADO, NUMERO, MES_CADUCIDAD, ANO_CADUCIDAD, CVV, ID_USUARIO, ID_TIPO_TARJETA) VALUES ('Principal', 4586755849885218, 1, 24, 651, 3, 2);
INSERT INTO TARJETA (NOMBRE_PERSONALIZADO, NUMERO, MES_CADUCIDAD, ANO_CADUCIDAD, CVV, ID_USUARIO, ID_TIPO_TARJETA) VALUES ('Principal', 4858467022270173, 1, 25, 658, 4, 1);
INSERT INTO TARJETA (NOMBRE_PERSONALIZADO, NUMERO, MES_CADUCIDAD, ANO_CADUCIDAD, CVV, ID_USUARIO, ID_TIPO_TARJETA) VALUES ('Principal', 4593650890739276, 5, 21, 602, 5, 2);
INSERT INTO TARJETA (NOMBRE_PERSONALIZADO, NUMERO, MES_CADUCIDAD, ANO_CADUCIDAD, CVV, ID_USUARIO, ID_TIPO_TARJETA) VALUES ('Principal', 4831363781047203, 4, 22, 379, 6, 1);
INSERT INTO TARJETA (NOMBRE_PERSONALIZADO, NUMERO, MES_CADUCIDAD, ANO_CADUCIDAD, CVV, ID_USUARIO, ID_TIPO_TARJETA) VALUES ('Principal', 4639241784368954, 12, 21, 271, 7, 2);
INSERT INTO TARJETA (NOMBRE_PERSONALIZADO, NUMERO, MES_CADUCIDAD, ANO_CADUCIDAD, CVV, ID_USUARIO, ID_TIPO_TARJETA) VALUES ('Principal', 4255897561004105, 6, 22, 426, 8, 1);
INSERT INTO TARJETA (NOMBRE_PERSONALIZADO, NUMERO, MES_CADUCIDAD, ANO_CADUCIDAD, CVV, ID_USUARIO, ID_TIPO_TARJETA) VALUES ('Principal', 4527781871096401, 8, 24, 56, 9, 2);
INSERT INTO TARJETA (NOMBRE_PERSONALIZADO, NUMERO, MES_CADUCIDAD, ANO_CADUCIDAD, CVV, ID_USUARIO, ID_TIPO_TARJETA) VALUES ('Principal', 4904998630174427, 10, 22, 224, 10, 1);
INSERT INTO TARJETA (NOMBRE_PERSONALIZADO, NUMERO, MES_CADUCIDAD, ANO_CADUCIDAD, CVV, ID_USUARIO, ID_TIPO_TARJETA) VALUES ('Principal', 4240073204672074, 11, 22, 482, 11, 1);

-- EDITORIAL
INSERT INTO EDITORIAL (NOMBRE, DIRECCION, PROVINCIA, CCAA, TELEFONO1, TELEFONO2, ENLACE_WEB, DESCRIPCION)
VALUES ('Planeta', 'Avenida Diagonal, 662 -664', 'Barcelona', 'Barcelona', 934928000, null, 'www.planeta.es',
        'Edición de libros de texto de fondo general.');
INSERT INTO EDITORIAL (NOMBRE, DIRECCION, PROVINCIA, CCAA, TELEFONO1, TELEFONO2, ENLACE_WEB, DESCRIPCION)
VALUES ('ACEN', 'Avenida Montereal, 6', 'Pontevedra', 'Pontevedra', 795148020, null, 'www.acen.es',
        'Edición de libros de todo tipo.');
INSERT INTO EDITORIAL (NOMBRE, DIRECCION, PROVINCIA, CCAA, TELEFONO1, TELEFONO2, ENLACE_WEB, DESCRIPCION)
VALUES ('Alianza', 'Calle juan Ignacio luca de tena, 15', 'Madrid', 'Madrid', 913938888, 913938800,
        'www.alianzaeditorial.es', 'Edición de libros de todo tipo.');
INSERT INTO EDITORIAL (NOMBRE, DIRECCION, PROVINCIA, CCAA, TELEFONO1, TELEFONO2, ENLACE_WEB, DESCRIPCION)
VALUES ('Alfaguara', 'Calle Isabel II, 8', 'Sevilla', 'Sevilla', null, null, 'www.alfaguara.es',
        'Edición de libros de texto de fondo general.');
INSERT INTO EDITORIAL (NOMBRE, DIRECCION, PROVINCIA, CCAA, TELEFONO1, TELEFONO2, ENLACE_WEB, DESCRIPCION)
VALUES ('Áltera Ediciones', 'Rúa Buenos Airea, 66', 'A Coruña', 'A Coruña', null, null, 'www.altera-ediciones.es',
        'Edición de libros de todo tipo.');
INSERT INTO EDITORIAL (NOMBRE, DIRECCION, PROVINCIA, CCAA, TELEFONO1, TELEFONO2, ENLACE_WEB, DESCRIPCION)
VALUES ('Ediciones Alfar', 'Calle Aranjuez, 1', 'Madrid', 'Madrid', null, null, 'www.ediciones-alfar.es',
        'Edición de libros de texto de fondo general.');

-- AUTOR
INSERT INTO AUTOR (NOMBRE, APELLIDO1, APELLIDO2, BIOGRAFIA, LINK_FOTO)
VALUES ('Arturo Pérez Reverte', '', '',
        'Arturo Pérez-Reverte Gutiérrez es un escritor y periodista español, miembro de la Real Academia Española desde 2003. Antiguo corresponsal de RTVE y reportero destacado en diversos conflictos armados y guerras, es el autor, entre otras, de la saga Las aventuras del capitán Alatriste y la trilogía de Falcó.',
        'https://image.flaticon.com/icons/png/512/21/21104.png');
INSERT INTO AUTOR (NOMBRE, APELLIDO1, APELLIDO2, BIOGRAFIA, LINK_FOTO)
VALUES ('María Dueñas', '', '',
        'María Dueñas Vinuesa es una escritora española. Saltó a la fama en 2009 con El tiempo entre costuras, su primera novela, que se convirtió en una de las obras más vendidas de la literatura española en los últimos años y ha sido traducida a más de veinticinco idiomas.​',
        'https://image.flaticon.com/icons/png/512/21/21104.png');
INSERT INTO AUTOR (NOMBRE, APELLIDO1, APELLIDO2, BIOGRAFIA, LINK_FOTO)
VALUES ('Almudena Grandes', '', '',
        'Almudena Grandes Hernández es una escritora española, columnista habitual del diario El País, y contertulia en la sección Hoy por hoy de Cadena SER.',
        'https://image.flaticon.com/icons/png/512/21/21104.png');
INSERT INTO AUTOR (NOMBRE, APELLIDO1, APELLIDO2, BIOGRAFIA, LINK_FOTO)
VALUES ('Javier Castillo', '', '', 'Javier Castillo es un escritor español.',
        'https://image.flaticon.com/icons/png/512/21/21104.png');
INSERT INTO AUTOR (NOMBRE, APELLIDO1, APELLIDO2, BIOGRAFIA, LINK_FOTO)
VALUES ('Mario Vargas LLosa', '', '',
        'Jorge Mario Pedro Vargas Llosa, i marqués de Vargas Llosa, ​​ conocido como Mario Vargas Llosa, es un escritor peruano que cuenta también con la nacionalidad española desde 1993.',
        'https://image.flaticon.com/icons/png/512/21/21104.png');
INSERT INTO AUTOR (NOMBRE, APELLIDO1, APELLIDO2, BIOGRAFIA, LINK_FOTO)
VALUES ('Javier Sierra', '', '',
        'Javier Sierra Albert es un escritor y periodista español. Premio Planeta de novela 2017 por El fuego invisible, es el único escritor español en el Top Ten de la lista de los más vendidos de Estados Unidos, elaborada por The New York Times. Lo consiguió en abril de 2006​con La cena secreta, alcanzando el número 6.',
        'https://image.flaticon.com/icons/png/512/21/21104.png');
INSERT INTO AUTOR (NOMBRE, APELLIDO1, APELLIDO2, BIOGRAFIA, LINK_FOTO)
VALUES ('Anónimo', '', '', '', 'https://image.flaticon.com/icons/png/512/21/21104.png');

-- TEMATICA
INSERT INTO TEMATICA (NOMBRE, DESCRIPCION)
VALUES ('Terror', 'Terror');
INSERT INTO TEMATICA (NOMBRE, DESCRIPCION)
VALUES ('Comedia', 'Comedia');
INSERT INTO TEMATICA (NOMBRE, DESCRIPCION)
VALUES ('Suspense', 'Suspense');
INSERT INTO TEMATICA (NOMBRE, DESCRIPCION)
VALUES ('Ciencia ficción', 'Ciencia ficción');
INSERT INTO TEMATICA (NOMBRE, DESCRIPCION) VALUES ('Infantil', 'Infantil');
INSERT INTO TEMATICA (NOMBRE, DESCRIPCION) VALUES ('Acción', 'Acción');
INSERT INTO TEMATICA (NOMBRE, DESCRIPCION) VALUES ('Aventuras', 'Aventuras');

-- COLECCION
INSERT INTO COLECCION (NOMBRE, DESCRIPCION) VALUES ('Narrativa', 'Narrativa');
INSERT INTO COLECCION (NOMBRE, DESCRIPCION) VALUES ('Filosofía', 'Filosofía');
INSERT INTO COLECCION (NOMBRE, DESCRIPCION) VALUES ('Entretenimiento', 'Entretenimiento');
INSERT INTO COLECCION (NOMBRE, DESCRIPCION) VALUES ('Libro de bolsillo', 'Libro de bolsillo');
INSERT INTO COLECCION (NOMBRE, DESCRIPCION) VALUES ('Literatura', 'Literatura');

-- LIBRO
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-24066-2', 'El campamento', '', 'Todos se mueren por entrar, pero morirán si no consiguen salir. Diez de los chicos más prometedores del país, menores de 23 años, han sido invitados a un campamento muy especial en los Pirineos. El precursor de esta idea es Fernando Godoy, uno de los hombres más ricos de España, que busca a alguien joven que le ayude a dar una nueva imagen a su imperio y que en el futuro ocupe su lugar. En aquel idílico paraje, recibirán formación y serán preparados para convertirse en la mano derecha del millonario. Pero solo uno podrá conseguirlo. Una bestseller de novela juvenil, una atrevida instagramer, un cantante pop de moda, un exitoso atleta, un estudiante de criminología brillante, una influencer con marca propia, la creadora de una app para frikis, uno de los gamers del momento, un chico que promulga la palabra de Dios de una manera peculiar y una conocida actriz son los candidatos finales. Solo tendrán un hándicap para estar allí: nada de móviles ni comunicación con el exterior. Las cosas marchan según lo previsto y los jóvenes disfrutan de aquella experiencia hasta que en el segundo viernes de convivencia los coordinadores del grupo desaparecen y uno de los chicos muere en extrañas circunstancias. A partir de ese instante todo cambiará y los acontecimientos inesperados se irán sucediendo. Tras el éxito de La chica invisible, Blue Jeans vuelve a sorprender a sus lectores con un apasionante thriller repleto de intriga y acción.', 280, 'Papel', STR_TO_DATE('10-08-2021', '%d-%m-%Y'), STR_TO_DATE('30-06-2020', '%d-%m-%Y'), STR_TO_DATE('26-03-2020', '%d-%m-%Y'), 1, 'Castellano', 1, 6, 'https://static.cegal.es/imagenes/marcadas/9788408/978840824066.gif', 1);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-23551-4', 'Aquitania', 'Premio Planeta 2020', '1137. El duque de Aquitania —la región más codiciada de Francia— aparece muerto en Compostela. El cuerpo queda de color azul y con la marca del «águila de sangre», una ancestral tortura normanda. Su hija Eleanor decide vengarse y para ello se casa con el hijo del que cree su asesino: Luy VI el Gordo, rey de Francia.Pero el propio rey muere durante la boda en idénticas circunstancias. Eleanor y Luy VII intentarán averiguar, junto con los gatos aquitanos —los épicos espías de los duques—, quién quiere a los inexpertos reyes en el trono.Décadas antes de la muerte del duque de Aquitania, un niño sin nombre es abandonado en un bosque por sus cinco madres. Acaso un monstruo, o tal vez un santo, el pequeño superviviente acabará convirtiéndose en uno de los hombres más excepcionales del medievo europeo. Un cautivador thriller histórico que atraviesa un siglo repleto de venganzas, incestos y batallas. Un turbador misterio en torno a tres vidas que forjarán lo que más tarde se llamará Europa. Vuelve la autora de la exitosa Trilogía de la Ciudad Blanca (El silencio de la ciudad blanca, Los ritos del agua, Los señores del tiempo).', 396, 'Papel', STR_TO_DATE('09-11-2021', '%d-%m-%Y'), STR_TO_DATE('28-11-2019', '%d-%m-%Y'), STR_TO_DATE('23-04-2021', '%d-%m-%Y'), 1, 'Castellano', 8, 85, 'https://static.cegal.es/imagenes/marcadas/9788408/978840823551.gif', 2);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-23500-2', 'La Ciudad de Vapor', '', 'Carlos Ruiz Zafón concibió está obra como un reconocimiento a sus lectores, que le habían seguido a lo largo de la saga iniciada con La Sombra del Viento.   «Puedo conjurar rostros de chiquillos del barrio de la Ribera con los que a veces jugaba o peleaba en la calle, pero ninguno que quisiera rescatar del país de la indiferencia. Ninguno excepto el de Blanca.» Un muchacho decide hacerse escritor al descubrir que sus invenciones le regalan un rato más de interés por parte de la niña rica que le ha robado el corazón. Un arquitecto huye de Constantinopla con los planos de una biblioteca inexpugnable. Un extraño caballero tienta a Cervantes para que escriba un libro como no ha existido jamás. Y Gaudí, navegando hacia una misteriosa cita en Nueva York, se deleita con la luz y el vapor, la materia de la que deberían estar hechas las ciudades. El eco de los grandes personajes y motivos de las novelas de El Cementerio de los Libros Olvidados resuena en los cuentos de Carlos Ruiz Zafón —reunidos por primera vez, y algunos de ellos inéditos— en los que prende la magia del narrador que nos hizo soñar como nadie.', 296, 'Papel', STR_TO_DATE('11-10-2019', '%d-%m-%Y'), STR_TO_DATE('09-01-2021', '%d-%m-%Y'), STR_TO_DATE('07-09-2020', '%d-%m-%Y'), 1, 'Castellano', 0, 53, 'https://static.cegal.es/imagenes/marcadas/9788408/978840823500.gif', 3);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-23552-1', 'Un océano para llegar a ti', 'Finalista Premio Planeta 2020', 'Una novela tierna y atrevida sobre los secretos familiares y las emociones silenciadas. Tras la muerte de su madre, Gabriele vuelve al pueblo de los veranos de su infancia. Allí le espera su padre, con el que no habla desde hace años. Juntos se disponen a cumplir el último deseo de Greta: que las tres personas más importantes de su vida —su marido, su única hija y su cuñada— esparzan sus cenizas en un lugar donde fueron felices. Los secretos que Greta desvela en las cartas que deja a su familia terminarán con el silencio entre padre e hija y, como en un dominó, alterarán la vida de todos y propiciarán un encuentro inesperado que hará que Gabriele descubra que en la vulnerabilidad se halla la magia de la vida.¿Y si el destino de las personas tendiera un hilo invisible que las conecta con aquellos que deben encontrar? ¿Y si la vida solo fuera un viaje para encontrarlos?', 193, 'Papel', STR_TO_DATE('25-06-2020', '%d-%m-%Y'), STR_TO_DATE('14-07-2021', '%d-%m-%Y'), STR_TO_DATE('05-06-2019', '%d-%m-%Y'), 1, 'Castellano', 20, 90, 'https://static.cegal.es/imagenes/marcadas/9788408/978840823552.gif', 4);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-22469-3', 'Y Julia retó a los dioses', 'Cuando el enemigo es tu propio hijo..., ¿existe la victoria?', 'Mantenerse en lo alto es mucho más difícil que llegar. Julia está en la cúspide de su poder, pero la traición y la división familiar amenazan con echarlo todo a perder. Para colmo de males, el médico Galeno diagnostica que la emperatriz padece lo que él, en griego, llama karkinos, y que los romanos, en latín, denominan cáncer. El enfrentamiento brutal entre sus dos hijos aboca la dinastía de Julia al colapso. En medio del dolor físico y moral que padece la augusta, cualquiera se hubiera rendido. Se acumulan tantos desastres que Julia siente que es como si luchara contra los dioses de Roma. Pero, en medio del caos, una historia de amor más fuerte que la muerte, una pasión capaz de superar pruebas imposibles emerge al rescate de Julia. Nada está perdido. La partida por el control del imperio continúa. JULIA DOMNA, la nueva saga del autor que ha conquistado a más de 4 millones de lectores.', 40, 'Papel', STR_TO_DATE('21-11-2020', '%d-%m-%Y'), STR_TO_DATE('22-10-2020', '%d-%m-%Y'), STR_TO_DATE('13-08-2021', '%d-%m-%Y'), 1, 'Castellano', 4, 98, 'https://static.cegal.es/imagenes/marcadas/9788408/978840822469.gif', 5);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-23910-9', 'Cocina de resistencia', 'Las mejores recetas para no desperdiciar nada', 'Este libro es mucho más que un simple catálogo de recetas. Alberto Chicote, uno de los chefs más exitosos y mediáticos del momento, nos invita a disfrutar de la cocina recordando las emociones que le han inspirado estos platos a lo largo de su vida. Con ingredientes sencillos, con lo que tengas a mano en la nevera, con el propósito de sacarle partido a todo y que nada acabe en la basura. Porque cocinar no solo es necesario para alimentarnos, es algo que nos hace felices. Las recetas son la guía, así que anímate a probarlas, a explorar y a hacerlas tuyas. Cocina, conserva, reutiliza, ¡inventa! Esa es la esencia de la #CocinaDeResistencia. Recuerda: en casa… ¡no se tira nada! «Alberto es entusiasta y chispeante, posee un carisma que te envuelve, algo que sin duda transmite en su cocina», Susi Díaz «Cocina de resistencia nos recuerda varios dogmas culinarios que nunca debemos olvidar: disfrutar cocinando, maridando cada receta con nuestros recuerdos más entrañables, y gozar degustando», Paco Roncero «No podía haber mejor título para estas páginas de recetas que nos ayudan a, día a día, realizar desde casa una cocina sana, sencilla y ordenada», Paco Torreblanca ¡Mucho más que un libro de recetas! Organiza tu despensa, prepara tu menú y aprende a aprovechar hasta el último ingrediente de tu cocina.', 395, 'Papel', STR_TO_DATE('12-06-2020', '%d-%m-%Y'), STR_TO_DATE('29-11-2021', '%d-%m-%Y'), STR_TO_DATE('06-05-2019', '%d-%m-%Y'), 1, 'Castellano', 2, 95, 'https://static.cegal.es/imagenes/marcadas/9788408/978840823910.gif', 6);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-24071-6', 'Una mujer en la garganta', '', 'Un libro que es una reivindicación de los amores pasionales y de la belleza, pero también una autorreivindicación poética, mundo en el que Marwán se siente un apátrida al no reconocerse dentro de ninguna tradición. De todos sus poemarios es el más rebelde, tanto en su manera de subrayar el frenesí amoroso y la locura del poeta como en la búsqueda de no encajar en ningún molde, ni siquiera en los suyos propios. Poesía a contracorriente, que es lo que siempre ha hecho Marwán desde que capitalizó el cambio que en los últimos años vivió el mundo poético y del que hoy nos trae su cuarto libro. Amores que caminan por el angosto filo de la insensatez y no acatan las normas, legiones de sentimientos, delitos que se cometen a espaldas de la rutina, sonetos, aforismos, reflexiones en torno al quehacer poético, el vuelo de un poeta llamado Ícaro. Eso es este libro. Tras tres años sin publicar, Marwán vuelve a sorprendernos con su cuarto libro de poemas en el que nos descubre una nueva faceta aún desconocida del autor.', 318, 'Papel', STR_TO_DATE('15-01-2020', '%d-%m-%Y'), STR_TO_DATE('12-06-2020', '%d-%m-%Y'), STR_TO_DATE('29-11-2021', '%d-%m-%Y'), 1, 'Castellano', 1, 68, 'https://static.cegal.es/imagenes/marcadas/9788408/978840824071.gif', 1);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1341-512-3', 'Voces que cuentan (novela gráfica)', 'Una antología', 'En este volumen se reúnen algunas de las autoras más relevantes del panorama sociocultural actual que nos cuentan unas historias muy íntimas y personales, trasladadas a novela gráfica por algunas de las mejores dibujantes contemporáneas. Tras una preciosa ilustración de cubierta de Esther Gili donde se evoca la ensoñación y la creatividad, hay nueve historias cortas que no dejarán a nadie indiferente. Son relatos que hablan sobre un padre feminista; sobre lo ridículas que se ven nuestras asociaciones de lo masculino y lo femenino cuando estas se invierten durante un día; sobre cómo la anorexia fue el síndrome de la impostora original; sobre cómo las mujeres, incluso cuando son mayoría, se silencian a ellas mismas; sobre una canción que en su soledad habla y reúne a todas las mujeres de la historia; sobre cómo el compartir una tarta en un café puede ser un lugar de confesiones; sobre cómo la vida de tus antepasadas te ha formado como eres hoy; sobre cómo un momento compartido entre madre e hija se convierte en la semilla de lo que será tu obra, y sobre usar la valentía y el coraje para hacer aquello que todo el mundo te dice que no puedes hacer solo por ser quien eres. Todas estas historias forman Voces que cuentan en los siguientes relatos: “Julio”, por Julia Otero (Julia en la Onda) y Ada Diez (Hits With Tits) “24 horas”, por Lola García (La Vanguardia) y Agustina Guerrero (La Volátil) “El bicho”, por Diana López Varela (No es país para coños) y Akira Pantsu (Planeta Manga) “Auctoritas”, por Estefanía Molina (La Sexta Noche, Al rojo vivo) y Ana Oncina (Los f*cking 30) “Soledad”, por Eva Amaral (Salto al Color) y María Hesse (Frida Kahlo, Bowie, El placer) “Más mujer”, por Leticia Dolera (Morder la manzana) y Raquel Riba Rossy (Lola Vendetta) “Pasos de tortuga”, de Sandra Sabatés (El intermedio) y Sandra Cardona (Bouillon) “Por una falda de plátanos”, de Almudena Grandes (Los besos en el pan) y Sara Herranz (La persona incorrecta) “Mzungu”, de Patricia Campos (Tierra, mar y aire) y Sara Soler (En la oscuridad)', 285, 'Papel', STR_TO_DATE('04-10-2019', '%d-%m-%Y'), STR_TO_DATE('23-08-2019', '%d-%m-%Y'), STR_TO_DATE('18-05-2019', '%d-%m-%Y'), 1, 'Castellano', 3, 81, 'https://static.cegal.es/imagenes/marcadas/9788413/978841341512.gif', 6);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-23455-5', 'La buena cocina', '900 recetas que siempre salen bien', 'El arte de escoger y mezclar bien los ingredientes es uno de los secretos mejor guardados de la buena cocina. Su éxito depende de una variedad de texturas y sabores que, bien combinados, pueden tener un resultado explosivo. En este nuevo recetario de Karlos Arguiñano descubrirás qué ingredientes usar en tu día a día cuidando tu salud y con lo que tengas más a mano en la despensa o el frigorífico. Con un práctico índice de sugerencias clasificadas por ingredientes, estas 900 recetas superdeliciosas y fáciles te permitirán preparar completos menús que incluyen legumbres, carnes y aves, verduras y hortalizas, pescados, huevos, cereales, frutas y postres. Lentejas con calabacín y bolitas de boniato, boquerones a la sidra con ensalada de patata o flan de puerros y gambas. Platos de sencilla elaboración que siempre salen bien, auténticos y saludables, para disfrutar de la buena cocina casera.', 468, 'Papel', STR_TO_DATE('10-04-2021', '%d-%m-%Y'), STR_TO_DATE('02-07-2021', '%d-%m-%Y'), STR_TO_DATE('20-12-2019', '%d-%m-%Y'), 1, 'Castellano', 5, 66, 'https://static.cegal.es/imagenes/marcadas/9788408/978840823455.gif', 3);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-24228-4', 'Los Diez Escalones', '', 'Reino de Castilla, 1283 d. C. Alvar León de Lara, cardenal de la curia, vuelve a petición de su antiguo mentor a la abadía que fue su hogar, que abandonó veinte años atrás con el alma rota por un amor imposible. Su maestro desea revelarle algo que cambiará el curso de la cristiandad. Sin embargo, la llegada de Alvar desencadenará la tragedia: enigmas tras puertas ocultas, crímenes inexplicables, símbolos que conducen a pistas y pistas que conducen a trampas. Un descenso vertiginoso que le enfrentará a la mujer que desgarró su corazón, a la intransigencia de los cobardes, a la lucha por mantenerse entre los vivos y, finalmente, a los Diez Escalones. Fernando J. Múñez, autor del bestseller La cocinera de Castamar, nos transporta en esta ocasión a los mundos ocultos del Medievo, donde los personajes se enfrentarán a demonios antiguos que aún perviven entre nosotros: los prejuicios, las ideas irracionales y los dogmas inamovibles. En una época en la que se confundía a Dios con el Diablo, y donde el amor se enjaulaba bajo las leyes de los hombres, diez escalones podían mostrar la diferencia.', 188, 'Papel', STR_TO_DATE('14-10-2020', '%d-%m-%Y'), STR_TO_DATE('10-06-2019', '%d-%m-%Y'), STR_TO_DATE('17-05-2020', '%d-%m-%Y'), 1, 'Castellano', 7, 43, 'https://static.cegal.es/imagenes/marcadas/9788408/978840824228.gif', 5);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-22983-4', 'La reina sola', '', 'Una joven reina recién coronada y sin experiencia de gobierno es abandonada por su marido en los peores momentos de su pequeño reino. Unos nobles hostiles, ansiosos de poder, provocan sangrientas revueltas que amenazan su vida y la de sus hijos. Además, deberá enfrentarse, con la ayuda de unos pocos fieles, a los tres mayores poderes del siglo XIII: Carlos, el gran emperador mediterráneo, Francia y un papa despiadado. Mientras, a su esposo Pedro le espera el engaño y una devastadora cruzada de un poder diez veces mayor al suyo, que invadirá la corona de Aragón, arrasándolo todo. Amor, odio y venganza. Una apasionante historia que cambió el destino de España y el poder en el Mediterráneo.', 286, 'Papel', STR_TO_DATE('10-06-2021', '%d-%m-%Y'), STR_TO_DATE('18-03-2021', '%d-%m-%Y'), STR_TO_DATE('07-06-2020', '%d-%m-%Y'), 1, 'Castellano', 9, 74, 'https://static.cegal.es/imagenes/marcadas/9788408/978840822983.gif', 5);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-24226-0', 'Infierno en el paraíso', '', 'Sonia Torres es una joven que comienza a trabajar como camarera en el Beach Club de Marbella, uno de los hoteles más conocidos y elitistas de la ciudad, con gran presencia de jeques y personalidades de Oriente Medio. Gracias a sus estudios de árabe, pronto pasa a convertirse en la camarera personal de las princesas saudíes. Amina, la segunda esposa del rey Fadel, convence a la joven para que dé clases de castellano en el palacio a ella y a los hijos de Sultana, la primera esposa. Las grandes propinas que obtiene en el hotel junto con el desproporcionado sueldo de profesora, abren a Sonia los ojos a una realidad que podría poner punto y final a sus problemas. Sin embargo, todo cambiará cuando la joven se vea implicada en una extraña y angustiosa trama que termina con la desaparición de la princesa Amina y descubra la oscura realidad que se esconde tras el oropel del lujo. Una apasionante intriga sobre la huida de una princesa saudí encerrada en su jaula de oro', 293, 'Papel', STR_TO_DATE('21-06-2021', '%d-%m-%Y'), STR_TO_DATE('19-11-2020', '%d-%m-%Y'), STR_TO_DATE('04-03-2021', '%d-%m-%Y'), 1, 'Castellano', 4, 96, 'https://static.cegal.es/imagenes/marcadas/9788408/978840824226.gif', 6);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-24133-1', 'Felipe VI. Un rey en la adversidad', '', 'El acceso a la jefatura del Estado de Felipe VI en 2014 fue traumático tras la obligada abdicación de su padre. Los años transcurridos desde entonces se han caracterizado por su convulsión, tanto en el ámbito familiar del monarca como en el político e institucional de España. Con el nuevo rey, el país se introdujo en un cambio de paradigma completo. De Felipe VI hay que suponerlo casi todo. Este libro nos descubre al personaje inédito con sus circunstancias vitales y políticas. Un ensayo trepidante que vuelca la experiencia del autor a lo largo de toda su vida de ejercicio profesional. José Antonio Zarzalejos, discreto gigante del periodismo, ha contado con la cercanía de fuentes de la máxima solvencia para poder escribir un relato histórico y político de tanto calado y que aporta un haz de potente luz sobre la figura y las adversidades del rey de España. ¿Por qué siguió instalado don Juan Carlos en la Zarzuela tras su abdicación? ¿Se produjo entre 2014 y 2019 un reinado simultáneo del padre y del hijo? ¿Cómo fue la expatriación de Juan Carlos? ¿Por qué en Abu Dabi? ¿Le echó el Gobierno o le aconsejó su hijo salir de España? ¿Qué ocurrió entre Felipe VI y Mariano Rajoy aquel célebre 3 de octubre de 2017, tras los sucesos de Cataluña? ¿Cuál es su verdadera relación con Pedro Sánchez? ¿Quién defiende la institución de la Corona y al rey? ¿Reinará la princesa Leonor finalmente? El autor no elude ninguno de los conflictos y contradicciones de Felipe VI en un relato histórico tan palpitante como riguroso. En estas páginas no hay preguntas, hay respuestas. Quizá, las que la sociedad necesita. La primera gran obra de referencia sobre la figura de Felipe VI que revela todas las claves de su convulso reinado.', 163, 'Papel', STR_TO_DATE('22-02-2020', '%d-%m-%Y'), STR_TO_DATE('21-06-2021', '%d-%m-%Y'), STR_TO_DATE('13-07-2020', '%d-%m-%Y'), 1, 'Castellano', 2, 100, 'https://static.cegal.es/imagenes/marcadas/9788408/978840824133.gif', 1);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-24216-1', 'Verano de lobos (Serie Haparanda 1)', '', 'El hallazgo de restos humanos en el estómago de un lobo muerto en la localidad de Haparanda, en la frontera entre Suecia y Finlandia, pone en marcha una investigación que cambiará para siempre el destino de la policía Hannah Wester. El caso parece tener vínculos con un sangriento enfrentamiento entre narcotraficantes que tuvo lugar en Finlandia. Pero ¿cómo ha llegado el hombre hasta el bosque de las afueras de Haparanda? Hannah y sus compañeros deberán remover cielo y tierra para descubrir lo sucedido; el tiempo apremia y la aparición de nuevos cadáveres pondrá a Hannah y a su equipo en el punto de mira. Sobre todo, cuando Katja, la más brillante asesina a sueldo, llegue al pueblo. Con su aparición, Haparanda se verá azotada por varios acontecimientos tan inesperados como brutales. Adéntrate en Haparanda, un pueblo fronterizo donde todos son sospechosos. Del autor de la Serie Bergman, con más de 5 millones de lectores.', 164, 'Papel', STR_TO_DATE('16-09-2020', '%d-%m-%Y'), STR_TO_DATE('30-03-2021', '%d-%m-%Y'), STR_TO_DATE('12-11-2021', '%d-%m-%Y'), 1, 'Castellano', 4, 97, 'https://static.cegal.es/imagenes/marcadas/9788408/978840824216.gif', 2);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-24010-5', 'Las cuatro amigas (Saga Hijas de una nueva era 3)', 'Una emocionante saga sobre cuatro mujeres que se enfrentaron a los momentos cruciales del siglo XX con la fuerza de la amistad', 'Hamburgo, 1970. Henny celebra su cumpleaños rodeada de su familia y de sus inseparables amigas. El hilo de la complicidad que unía su vida con la de Käthe, Lina e Ida continúa ahora en las nuevas generaciones: Florentine, la modelo que regresa de París con una inesperada noticia; Katja, que sueña con fotografiar conflictos por todo el mundo; y Ruth, que lucha por liberarse de una relación tormentosa. Todas ellas, como ya hicieran sus madres y sus abuelas, comparten la felicidad y la desgracia, los momentos aparentemente triviales y aquellos que determinan sus destinos. Son años de grandes acontecimientos: el pueblo alemán está dividido, la guerra de Vietnam aterra a medio mundo, se expande un renacido extremismo y la caída del Muro de Berlín señala el fin del miedo. La amistad que forjaron cuatro amigas sirvió de inspiración para que sus hijas alcanzaran su lugar en el mundo y alumbró el destino de tres jóvenes en el inicio de una nueva época. Las cuatro amigas es la tercera y última entrega de la trilogía Hijas de una nueva era, una emocionante saga sobre la libertad, el amor y la valentía que narra la fascinante historia del siglo XX a través de una generación de mujeres que luchó por superar las circunstancias que les tocó vivir', 417, 'Papel', STR_TO_DATE('24-02-2020', '%d-%m-%Y'), STR_TO_DATE('28-09-2019', '%d-%m-%Y'), STR_TO_DATE('10-02-2020', '%d-%m-%Y'), 1, 'Castellano', 5, 62, 'https://static.cegal.es/imagenes/marcadas/9788408/978840824010.gif', 3);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-24124-9', 'Frida y los colores de la vida', 'Una novela fascinante sobre la mujer que forjó una leyenda', 'México, 1925. El gran deseo de Frida es ser médico, pero un terrible accidente le impide vivir su sueño. El azar la une a Diego, una de las grandes figuras en el mundo de la pintura. Frida y Diego se enamoran al instante y él la convence para que se convierta en artista. Frida sigue sus propias ideas, intuiciones y sueños, y consigue triunfar con un estilo único, con una fuerza nunca vista. Pero el dolor del amor fallido es insoportable y ella, que superó las limitaciones de su propio cuerpo, se tambalea ante las infidelidades de Diego. Hasta que llega el día en el que tiene que tomar la decisión más importante de su vida. Y al hacerlo comienza a forjar su leyenda y a alzar la voz en nombre de las mujeres que permanecen a la sombra de cualquier hombre. Una novela fascinante sobre la mujer que forjó una leyenda. La historia de Frida como nunca te la habían contado.', 270, 'Papel', STR_TO_DATE('22-11-2020', '%d-%m-%Y'), STR_TO_DATE('15-01-2021', '%d-%m-%Y'), STR_TO_DATE('23-07-2020', '%d-%m-%Y'), 1, 'Castellano', 5, 45, 'https://static.cegal.es/imagenes/marcadas/9788408/978840824124.gif', 4);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-24227-7', 'Un trozo de cielo azul', 'La verdad sobre cómo lo perdí todo, excepto la esperanza', '¿Es posible volver a empezar cuando crees que lo has perdido todo? Alonso Caparrós se convirtió en una estrella televisiva antes de cumplir treinta años, pero mientras todos veíamos su cara sonriente en cada nuevo plató, él batallaba con su adicción en una guerra que le impidió llevar la vida que siempre había soñado. Lejos de disfrutar de su estrellato, entró en una espiral de engaños, peleas familiares, fracasos amorosos y degradación de la que parecía imposible salir. Ahora, convertido en un hombre nuevo, capaz de controlar a su peor enemigo —que no es otro que él mismo—, nos descubre qué fue lo que le impidió rendirse cuando tocó fondo. Esta historia es una confesión, pero también un relato de redención. En ella, Alonso nos cuenta sin censura los episodios más sombríos de su vida, cómo estuvieron a punto de acabar con él y cómo, contra todo pronóstico, descubrió que en el mundo hay ángeles capaces de ver la luz hasta en los lugares más oscuros. Una memoria llena de remordimientos, de secretos y de esperanza. Alonso Caparrós se sincera con todos y consigo mismo en estas memorias llenas de remordimientos, de secretos y de esperanza.', 55, 'Papel', STR_TO_DATE('26-07-2020', '%d-%m-%Y'), STR_TO_DATE('24-07-2019', '%d-%m-%Y'), STR_TO_DATE('14-01-2020', '%d-%m-%Y'), 1, 'Castellano', 3, 42, 'https://static.cegal.es/imagenes/marcadas/9788408/978840824227.gif', 2);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-24123-2', 'Nuestra casa', '', 'Durante una luminosa mañana en un barrio acomodado del sur de Londres, una familia se muda a la casa que acaba de comprar en Trinity Avenue. Nada extraño en eso. Excepto que es tu casa. Y que no se la has vendido a nadie. Bram y Fiona Lawson se acaban de separar de forma civilizada y comparten, en turnos semanales, la custodia de los dos hijos que tienen en común, además de la gran casa que compraron tiempo atrás. Una mañana, Fiona se encuentra con un camión de mudanzas delante de su propiedad: al parecer, una pareja acaba de comprar su casa. Imposible, ella no la ha puesto a la venta. Al mismo tiempo, Bram y sus hijos han desaparecido sin dejar rastro y la única pregunta que obsesivamente repiquetea en la mente de Fiona es: ¿por qué? Juramos confiar el uno en el otro. Pero ambos estábamos mintiendo. PREMIO BRITISH BOOK AWARD AL MEJOR THRILLER DEL AÑO.', 125, 'Papel', STR_TO_DATE('09-08-2020', '%d-%m-%Y'), STR_TO_DATE('17-11-2019', '%d-%m-%Y'), STR_TO_DATE('24-07-2019', '%d-%m-%Y'), 1, 'Castellano', 2, 82, 'https://static.cegal.es/imagenes/marcadas/9788408/978840824123.gif', 2);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-249-1', '12 nuevas reglas para vivir', '', 'Tras 12 reglas para vivir, llega su esperada continuación, la obra que nos da el perfecto equilibrio entre orden y caos. En 12 reglas para vivir, obra de la que se han vendido más de cinco millones de ejemplares y que ha influido como ninguna otra en el ámbito intelectual y político del último lustro, Jordan Peterson ofrecía verdades eternas aplicadas a las ansiedades contemporáneas. Su mensaje provocador sobre el valor de la responsabilidad individual y el significado de nuestras acciones ha resonado con enorme fuerza arrastrando a miles de lectores a las librerías. A diferencia del anterior, centrado en las consecuencias del caos, Más allá del orden alerta sobre los peligros de un exceso de seguridad y control en nuestra vida y pone en valor conceptos como la creatividad, la curiosidad o la vitalidad. El objetivo es mantener el perfecto equilibrio entre los dos principios fundamentalles de la realidad: el orden y el caos, y evitar que ninguno de los dos gobierne nuestro destino. Entremezclando mitos, historia clásica y ejemplos personales de su propia vida y práctica clínica, Peterson presenta doce nuevos principios para lograr una vida con más sentido. El autor más influyente y polémico del momento. Su libro más esperado.', 245, 'Papel', STR_TO_DATE('26-04-2020', '%d-%m-%Y'), STR_TO_DATE('01-09-2019', '%d-%m-%Y'), STR_TO_DATE('18-01-2021', '%d-%m-%Y'), 1, 'Castellano', 5, 69, 'https://static.cegal.es/imagenes/marcadas/9788408/978840823904.gif', 2);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-9142-439-0', 'Y tú, ¿eres feminista?', '', 'Este es un libro sobre feminismo y filosofía. Aunque el tema es el feminismo, se aborda desde un punto de vista filosófico, porque parece que hay cosas que, por demasiado cotidianas, nos parecen inofensivas. Pero no lo son y, como mínimo, tendríamos que reflexionar para conseguir una vida más protegida y satisfactoria para todos. Porque el feminismo no es sólo para mujeres.', 406, 'Papel', STR_TO_DATE('24-09-2019', '%d-%m-%Y'), STR_TO_DATE('12-11-2019', '%d-%m-%Y'), STR_TO_DATE('12-10-2020', '%d-%m-%Y'), 1, 'Castellano', 7, 54, 'https://static.cegal.es/imagenes/marcadas/9788491/978849142439.gif', 2);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-7898-701-6', 'Miércoles Santo', '', 'El Coloreable de la Semana Santa de Sevilla. Miércoles Santo, otra ilusión cofradiera abriendo caminos hacia la eternidad. Las puertas de la Santa Catedral, nuevamente, quedarán impregnadas de la celestial espera. Solemne e inquieta transición hacia uno de esos días que brillan más que el sol. Miércoles Santo y la jubilosa primavera devolviéndole a la ciudad la mayor de sus sonrisas. Radiantes nazarenos del Carmen visten escapularios de juventud entre veteranas y consolidadas devociones, mientras Salud, Refugio, Caridad o Piedad ponen nombre a la Misericordia de un Dios, que abandonado por sus discípulos y prendido de amor, será traspasado al caer la tarde por San Martín para que bebamos para siempre de la voluntad que el Padre reserva para nuestro buen fin. Esplendor solemne por San Pedro, el dulce sueño de Cristo va abriendo los brazos a los gozosos días que vuelven.', 41, 'Papel', STR_TO_DATE('21-10-2020', '%d-%m-%Y'), STR_TO_DATE('06-07-2020', '%d-%m-%Y'), STR_TO_DATE('07-06-2020', '%d-%m-%Y'), 1, 'Castellano', 8, 39, 'https://static.cegal.es/imagenes/marcadas/9788478/978847898701.gif', 3);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-9142-458-1', 'El enigma del grafitero misterioso', '', '¿Qué significan los misteriosos grafitis que han aparecido en las paredes del colegio? Bea, Hugo y Natalia descubren que son anagramas. ¡con recomendaciones de libros! A la vez que se enganchan a la lectura, buscan al enigmático grafitero. ¿Lo conseguirán? Una novela de intriga que mantiene la atención de los jóvenes lectores y lectoras alrededor de un enigma vinculado... ¡a la promoción de la lectura! Laobra, además, es un auténtico canto de amor a la literatura y al fomento lector entre los niños y niñas.', 89, 'Papel', STR_TO_DATE('01-02-2021', '%d-%m-%Y'), STR_TO_DATE('09-03-2021', '%d-%m-%Y'), STR_TO_DATE('15-09-2020', '%d-%m-%Y'), 1, 'Castellano', 4, 75, 'https://static.cegal.es/imagenes/marcadas/9788491/978849142458.gif', 4);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-7898-538-8', 'El reto de la báscula (Guía más Diario)', '', 'Afronta el reto de La Báscula. Di adiós para siempre al sobrepeso con deporte y dieta sana. Ya conoces el método, ahora ponlo en práctica. Con la ayuda de esta guía, toma tus medidas, planifica tus menús y sigue un buen programa de ejercicio para adelgazar de una forma saludable. Siente en primera persona qué significa ser participante de La Báscula.', 121, 'Papel', STR_TO_DATE('13-12-2020', '%d-%m-%Y'), STR_TO_DATE('11-03-2020', '%d-%m-%Y'), STR_TO_DATE('23-05-2021', '%d-%m-%Y'), 1, 'Castellano', 33, 40, 'https://static.cegal.es/imagenes/marcadas/9788478/978847898538.gif', 1);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-7898-803-7', 'Músicos de Sevilla', '', 'Dos amigos de toda la vida charlan un Viernes de Dolores sobre como han ido evolucionando la vida y la Semana Santa en Sevilla. De bar en bar, y de cerveza en cerveza, llegan al Domingo de Ramos. A la par, Pablo, un adolescente modernito, intenta conquistar a Margarita, el amor de su vida, con la absurda idea de entrar en una banda cofrade, teniendo que lidiar con la dura decisión de decidir en cuál. ¿Cigarreras? ¿Tres Caídas? ¿Virgen de los Reyes? En Músicos de Sevilla. El Chiringuito de Bandones se rinde homenaje a todos esos músicos anónimos que ensayan durante todo el año para el disfrute de los demás, con el humor característico del Chiringuito de Bandones que le ha reportado ya más de 17.000 seguidores en redes sociales.', 461, 'Papel', STR_TO_DATE('08-06-2020', '%d-%m-%Y'), STR_TO_DATE('14-01-2020', '%d-%m-%Y'), STR_TO_DATE('17-08-2021', '%d-%m-%Y'), 1, 'Castellano', 2, 64, 'https://static.cegal.es/imagenes/marcadas/9788478/978847898803.gif', 6);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-7898-629-3', 'Las Aventuras de Tueli 2', '', 'El libro Las aventuras de Tueli es el texto resultante de un proyecto de investigacion y de desarrollo lector. para niñ@s de Primaria. Es el producto de un proyecto escolar de casi dos años. Encontrarás mÁs de 170 preguntas y otras actividades repartidas por los capítulos del libro. No sólo de comprensión literal sino inferencial y crítica. El proyecto ha sido premiado como "Experiencia del año" en el portal educativo Compartimos la clase. Desarrolla la Comprensión Lectora de una manera amena y lúdica enseñando valores al joven lector. Descubrirá la Fantasía clásica en este libro. La fiesta más importante del año está a punto de celebrarse. Es el cumpleaños del Rey. Todo está listo para la gran fiesta pero un terrible suceso ha revolucionado la vida en el castillo. Tueli y su amigo Marcus volverán a vivir una nueva y apasionante aventura para descubrir quién pudo cometer tan alta traición.. La corona del Rey ha desaparecido de forma misteriosa... Manuel Luis Sánchez Montero, maestro de profesión, ha publicado varias investigaciones de carácter docente en el ámbito de las TIC y la literatura infantil. Autor de varios libros como Guerra de Picos (Finalista en el Premio Internacional de Cuentos La Pereza 2013), Puedes Hacerlo (Diploma en el concurso literario Diario de Mujeres), Cuentos de aventuras clásicos, etc. Ha sido premiado con el sello Experiencia del Año por el portal educativo Compartimos la clase y con el premio «El juego en la escuela» de la Fundación Crecer Jugando. La saga Las aventuras de Tueli le llevó a conseguir el premio «Autor revelación 2014» por la revista cultural LiteraJuegos. En la actualidad imparte clases de Educación Primaria en la localidad sevillana de Marchena y escribe recomendaciones de literatura infantil y de práctica docente en su web www.elmaestromanu.com', 442, 'Papel', STR_TO_DATE('07-10-2020', '%d-%m-%Y'), STR_TO_DATE('29-04-2021', '%d-%m-%Y'), STR_TO_DATE('20-01-2020', '%d-%m-%Y'), 1, 'Castellano', 3, 11, 'https://static.cegal.es/imagenes/marcadas/9788478/978847898629.gif', 1);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-9142-292-1', 'La gran enciclopedia de la naturaleza', '', 'Las ilustraciones de este álbum te ayudarán a descubrir la naturaleza en toda su belleza y diversidad. Además, van acompañadas de fichas identificativas y de anécdotas divertidas que reúnen la información esencial de cada especie.', 110, 'Papel', STR_TO_DATE('20-06-2021', '%d-%m-%Y'), STR_TO_DATE('27-04-2021', '%d-%m-%Y'), STR_TO_DATE('31-10-2020', '%d-%m-%Y'), 1, 'Castellano', 4, 51, 'https://static.cegal.es/imagenes/marcadas/9788491/978849142292.gif', 1);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-7898-541-8', 'los tesoros perdidos de la Semana Santa de Sevilla', '', 'En sus manos, un nuevo paso editorial que nos llevará a abrir una primera ventana al exhaustivo catálogo histórico, artístico y documental sobre una parte del patrimonio perdido de las cofradías sevillanas y que pone en valor, una vez más, los grandes tesoros cofrades de la Semana Santa de Sevilla. Imaginería, orfebrería, pasos, insignias y un sinfín de enseres que pertenecieron al acervo patrimonial de las hermandades hispalenses y que, por diversas circunstancias a través de la historia, hoy en día se encuentran localizados en diversos puntos de nuestra geografía nacional. En base a todo ello, esta obra nace con la pretensión de ser una primera catalogación, seguramente incompleta, de más de ciento cincuenta piezas que en su día sirvieron a la Semana Santa de Sevilla y que han llegado hasta nuestros días porque para ellas las ganaron otras ciudades, que patentizan su continuidad y vigencia en las obras cofrades.', 161, 'Papel', STR_TO_DATE('06-10-2020', '%d-%m-%Y'), STR_TO_DATE('22-02-2020', '%d-%m-%Y'), STR_TO_DATE('19-06-2020', '%d-%m-%Y'), 1, 'Castellano', 1, 55, 'https://static.cegal.es/imagenes/marcadas/9788478/978847898541.gif', 3);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-9181-995-0', 'A propósito de nada', '', 'A PROPÓSITO DE NADA. LA AUTOBIOGRAFÍA DE WOODY ALLEN. 5ª EDICIÓN YA DISPONIBLE. Woody Allen que durante las seis décadas que lleva haciendo cine ha escrito y dirigido cincuenta películas, nos relata sus primeros matrimonios: el más precoz con una novia de su adolescencia y luego con la maravillosamente divertida Louise Lasser, a quien es evidente que todavía adora. También escribe sobre su romance con Diane Keaton, con quien mantiene una prolongada amistad. Y explica su relación personal y profesional con Mia Farrow, con quien realizó varias películas ahora clásicas, y que terminó con una separación por la que la prensa sensacionalista aún no le ha dado suficientemente las gracias. Él afirma que fue el primer sorprendido cuando, a sus cincuenta y seis años, inició una relación con Soon-Yi Previn, que entonces tenía veintiuno, y que los condujo a un romance estrepitoso y apasionado y a un matrimonio feliz de más de veintidós años. En un texto a menudo hilarante, haciendo gala de una franqueza sin límites, lleno de creativas intuiciones y de bastante perplejidad, un icono americano cuenta su historia, aunque nadie se lo haya pedido. CRÍTICAS: Las memorias del actor y director, A propósito de nada, son de lectura obligada para cinéfilos. La Vanguardia. Un texto a menudo hilarante, haciendo gala de una franqueza sin límites, lleno de creativas intui­ciones y de bastante perplejidad, un icono americano cuenta su historia. Cadena SER. Es imposible hacerlo mejor que Woody Allen. Carlos Boyero. Yo sé muy poco de cine pero sí he leído algunos libros y créanme, este se parece mucho a los libros excelentes. Diego S. Garrocho Salcedo. El Mundo. Woody Allen no ha escrito su autobiografía por placer, sino por tomar su propia defensa. Fernando Trueba.', 139, 'Papel', STR_TO_DATE('21-06-2020', '%d-%m-%Y'), STR_TO_DATE('10-03-2021', '%d-%m-%Y'), STR_TO_DATE('12-03-2020', '%d-%m-%Y'), 1, 'Castellano', 8, 19, 'https://static.cegal.es/imagenes/marcadas/9788491/978849181995.gif', 4);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-121-0', 'Nuestros inesperados hermanos', '', 'Alec, dibujante de mediana edad, y Eve, novelista de un mítico éxito editorial, son los únicos habitantes de un islote diminuto de la costa atlántica. Se evitan, hasta el día en que una inexplicable avería de todos los medios de comunicación les fuerza a salir de su celosa soledad. ¿Qué está pasando? ¿Ha sufrido un cataclismo el planeta tras las amenazas continuas de un conflicto nuclear y de atentados terroristas a gran escala? ¿Qué ha ocurrido en las islas cercanas, en la costa, en el resto del país, en el resto del planeta? Alec resolverá, poco a poco, el misterio. Gracias a su viejo amigo Moro, convertido en uno de los consejeros de confianza del presidente de Estados Unidos, conseguirá reconstruir el desarrollo de los acontecimientos, hasta descubrir que, si bien hemos escapado al desastre, lo hemos hecho de una manera tan extraña e inesperada que la Historia no podrá retomar su curso como hasta ahora. El tumultuoso encuentro de nuestros contemporáneos desorientados con sus "inesperados hermanos", pertenecientes a una misteriosa civilización que se proclama heredera de la antigua Grecia y que ha alcanzado un saber médico mucho más avanzado que el nuestro, convierte a esta novela en un cuento moderno de gran fuerza dramática. A través de la ficción y de la parábola, el autor trata en una narración los grandes temas abordados en sus ensayos como "Identidades asesinas", "El desajuste del mundo" y "El naufragio de las civilizaciones"...; pero abriendo la puerta a la esperanza que nos brindan "nuestros inesperados hermanos".', 88, 'Papel', STR_TO_DATE('12-05-2020', '%d-%m-%Y'), STR_TO_DATE('16-10-2020', '%d-%m-%Y'), STR_TO_DATE('04-10-2019', '%d-%m-%Y'), 1, 'Castellano', 0, 9, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362121.gif', 5);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-206-7420-9', 'El guardián entre el centeno', '', 'Por expreso deseo del autor, no está permitido que la editorial aporte en su material promocional ningún tipo de texto adicional, información biográfica, cita o reseña relacionados con esta obra. El lector interesado podrá, no obstante, encontrar abundante información al respecto en internet.', 116, 'Papel', STR_TO_DATE('12-09-2019', '%d-%m-%Y'), STR_TO_DATE('14-12-2020', '%d-%m-%Y'), STR_TO_DATE('20-11-2020', '%d-%m-%Y'), 1, 'Castellano', 20, 83, 'https://static.cegal.es/imagenes/marcadas/9788420/978842067420.gif', 6);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-213-2', 'La canción de Aquiles (AdN)', '', 'De la autora de Circe, una epopeya inolvidableGrecia en la era de los héroes. Patroclo, un príncipe joven y torpe, ha sido exiliado al reino de Ftía, donde vive a la sombra del rey Peleo y su hijo divino, Aquiles.Aquiles, el mejor de los griegos, es todo lo que no es Patroclo: fuerte, apuesto, hijo de una diosa. Un día Aquiles toma bajo su protección al lastimoso príncipe y ese vínculo provisional da paso a una sólida amistad mientras ambos se convierten en jóvenes habilidosos en las artes de la guerra.Pero el destino nunca está lejos de los talones de Aquiles. Cuando se extiende la noticia del rapto de Helena de Esparta, se convoca a los hombres de Grecia para asediar la ciudad de Troya. Aquiles, seducido por la promesa de un destino glorioso, se une a la causa, y Patroclo, dividido entre el amor y el miedo por su compañero, lo sigue a la guerra. Poco podía imaginar que los años siguientes iban a poner a prueba todo cuanto habían aprendido y todo cuanto valoraban profundamente.', 247, 'Papel', STR_TO_DATE('04-11-2021', '%d-%m-%Y'), STR_TO_DATE('09-11-2020', '%d-%m-%Y'), STR_TO_DATE('15-05-2020', '%d-%m-%Y'), 1, 'Castellano', 4, 48, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362213.gif', 1);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-206-7417-9', 'El Señor de las Moscas', '', '"El señor de las moscas" es Premio Nobel de Literatura 1983, una fábula moral acerca de la condición humana.Urdida en torno a la situación límite de una treintena de muchachos en una isla desierta, El Señor de las Moscas es una magnífica novela que admite lecturas diferentes e incluso opuestas. En efecto, si algunos pueden ver en esta indagación de William Golding en la condición humana la ilustración de que la agresividad criminal se halla entre los instintos básicos del hombre, otros podrán considerarla como una parábola que cuestiona un tipo de educación represiva que no hace sino incubar explosiones de barbarie prestas a estallar en cuanto los controles se relajan.', 317, 'Papel', STR_TO_DATE('16-09-2019', '%d-%m-%Y'), STR_TO_DATE('22-10-2021', '%d-%m-%Y'), STR_TO_DATE('29-09-2020', '%d-%m-%Y'), 1, 'Castellano', 2, 41, 'https://static.cegal.es/imagenes/marcadas/9788420/978842067417.gif', 2);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-202-6', 'Fantasmas azules (AdN)', '', 'María es una joven periodista acostumbrada a dejar huella que, desencantada tras una ruptura amorosa, decide aceptar una corresponsalía en Kabul. Allí encontrará un mundo diferente, extraño y mágico por momentos, azul y amarillo, dividido e inescrutable, poblado por mujeres que se le escurren y que no termina de entender. Un mundo en el que confluyen muchos otros personajes en ese crisol que es una ciudad devastada y en proceso de reinvención, como Mahmud, un guerrillero recién descendido de las montañas donde aún humea la contienda, que busca reinventarse y añora una infancia que casi no tuvo, perdida entre cometas y granadas, y que se ofrece como intérprete a Simón, un coordinador de Naciones Unidas encerrado en su pequeño mundo de hombre occidental que siente que tiene algo que demostrar. Y también está Ibrahím, un vendedor de alfombras marcado por los recuerdos; y Jana, una anciana que ha visto a demasiadas mujeres desaparecer; y Míster Marta, médico de una ONG, que desde su forma especial de entender el mundo, eligió quedarse en las montañas cuando sus compañeros se marcharon. Fantasmas azules es una pieza de orfebrería, una novela que nos habla de miradas, de silencios, de encuentros y pérdidas, de infancias recobradas. Pero también una reflexión sobre la identidad construida a partir de las miradas de otros y sobre la individualidad en un tiempo donde todo, hasta las certezas, se nos ofrecen envueltas y masticadas. Con ella, con su prosa anegada de poesía, luz, agua e ironía, Paula Farias se confirma como una de las narradoras más sabias e incisivas de nuestras letras.', 499, 'Papel', STR_TO_DATE('31-03-2020', '%d-%m-%Y'), STR_TO_DATE('27-04-2020', '%d-%m-%Y'), STR_TO_DATE('14-08-2019', '%d-%m-%Y'), 1, 'Castellano', 1, 91, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362202.gif', 3);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-215-6', 'Mil lunas (AdN)', '', 'Del autor de Días sin final, ganador del premio Costa 2016 a la mejor novela Winona es una joven huérfana lakota, adoptada por los antiguos soldados Thomas McNulty y John Cole. Vive con Thomas y John en la granja donde ambos trabajan en la década de 1870 en Tennessee; recibe educación y cariño, lo que la ayuda a forjarse una vida por sí misma superando la violencia y los expolios de su pasado. Pero en los tiempos que siguen a la guerra de Secesión, la frágil armonía de su insólita unidad familiar pronto se verá amenazada por otro traumático acontecimiento, que a Winona le costará afrontar y mucho más comprender. Narrada con la magnífica y excepcional prosa de Sebastian Barry, Mil lunas es el poderoso y conmovedor retrato del viaje de una mujer, de su determinación por escribir su propio futuro y de la inquebrantable capacidad humana de amar.', 48, 'Papel', STR_TO_DATE('18-10-2020', '%d-%m-%Y'), STR_TO_DATE('19-06-2019', '%d-%m-%Y'), STR_TO_DATE('09-06-2021', '%d-%m-%Y'), 1, 'Castellano', 3, 94, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362215.gif', 4);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-219-4', 'El papel del hijo (AdN)', '', 'PREMIO JEAN GIONO 2019Durante mucho tiempo, no supe casi nada de Paol aparte de estos retazos.«Bajo el régimen de Vichy, una carta de denuncia fue suficiente. A principios de septiembre de 1943, Paol, un ex oficial del ejército colonial francés, fue detenido por la Gestapo en un pueblo de Finisterre. Razón: "desconocida". Se lo llevaron a la prisión de Brest, lo encarcelaron con los "terroristas", lo interrogaron. Luego se vio inmerso en el engranaje de los campos de concentración nazis, en Francia y Alemania. Nada logró traerlo de vuelta. El silencio pesó durante mucho tiempo sobre la familia. En esta región de vientos y landas no se menta la desgracia. Años después, salí en busca de aquel hombre, que era mi abuelo. Salí a su encuentro. Y lo que no encontré de boca de los últimos testigos ni registrado en los archivos, me lo inventé. Para revivir a Paol.»J.-L.C.El gran libro que Jean-Luc Coatalem llevaba dentro.', 474, 'Papel', STR_TO_DATE('19-06-2019', '%d-%m-%Y'), STR_TO_DATE('28-05-2021', '%d-%m-%Y'), STR_TO_DATE('03-06-2019', '%d-%m-%Y'), 1, 'Castellano', 5, 17, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362219.gif', 5);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-204-0', 'El dilema (AdN)', '', 'El nuevo e intrigante thriller psicológico de la autora de Al cerrar la puertaSaber la verdad la destrozará. Ocultarla lo destrozará a él.Livia cumple cuarenta años y va a dar la fiesta de su vida para resarcirse del banquete nupcial que nunca tuvo. Irán todos sus seres queridos, menos su hija Marnie, que estudia en el extranjero, y aunque Livia la adora, en el fondo se alegra de que no vaya a estar presente. Tiene que contarle a Adam, su marido, algo sobre la niña, pero esperará a que termine la fiesta para poder así disfrutar de ese último momento de felicidad conjunta.Adam, empeñado en que la fiesta de Livia sea perfecta, ha organizado en secreto la visita de Marnie, pero a lo largo del día se entera de una noticia horrible. Tiene que contárselo a Livia porque ¿cómo van a celebrar la fiesta con lo que ha pasado? Pero su mujer está muy contenta e ilusionada... y los invitados a punto de llegar.¿Hasta dónde serías capaz de llegar para que el amor de tu vida disfrute de sus últimas horas de felicidad?El dilema, que narra cómo un solo día cambia para siempre la vida entera de una familia, es la nueva novela desoladora y arrebatadora de la autora superventas B. A. Paris.', 56, 'Papel', STR_TO_DATE('04-03-2020', '%d-%m-%Y'), STR_TO_DATE('01-10-2019', '%d-%m-%Y'), STR_TO_DATE('02-06-2019', '%d-%m-%Y'), 1, 'Castellano', 7, 15, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362204.gif', 6);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-221-7', 'El canto de las montañas (AdN)', '', 'La novela definitiva para entender la historia reciente de VietnamEl canto de las montañas cuenta una historia envolvente, que discurre a través de varias generaciones de la familia Tran, con el telón de fondo de la guerra de Vietnam. Tran Dieu Lan, nacida en 1920, se vio obligada a huir de las tierras de su familia con cinco de sus seis hijos durante la reforma agraria, cuando el gobierno comunista se hizo con el poder en el norte del país. Años más tarde, en Hanói, su joven nieta, Huong, alcanza la madurez mientras sus padres y sus tíos avanzan por la senda Ho Chi Minh para luchar en un conflicto que desgarró no solo a su querido país sino también a su familia. El canto de las montañas, primera novela publicada en español de la reputada poeta vietnamita Nguyen Phan Que Mai, es un relato vivo y apasionante, impregnado del lenguaje y de las tradiciones de Vietnam. Ilumina el coste humano de este conflicto desde el punto de vista del propio pueblo vietnamita, a la vez que nos muestra el verdadero poder de la bondad y la esperanza.', 265, 'Papel', STR_TO_DATE('04-01-2020', '%d-%m-%Y'), STR_TO_DATE('25-09-2020', '%d-%m-%Y'), STR_TO_DATE('17-03-2021', '%d-%m-%Y'), 1, 'Castellano', 9, 6, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362221.gif', 1);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-167-8', 'El problema de la paz', '', 'Segundo en la trilogía La Era de la Locura, El problema de la paz es la nueva entrega de una serie que está revolucionando la fantasía... Conspiración. Traición. Rebelión. La paz es solo otro tipo de campo de batalla... A pesar de los reveses sufridos, no hay nada que se interponga en el camino de Savine dan Glokta, en el pasado la inversora más poderosa de Adua, cuando ha puesto su ambición en un objetivo. Para héroes como Leo dan Brock y Stour Ocaso la paz no es más que un inconveniente que debe remediarse cuanto antes. Pero primero hay que alimentar agravios y reunir aliados. Entre tanto, Rikke tiene que dominar el ojo largo... antes de que su poder acabe con ella. En todos los sectores de la sociedad anida el descontento. Los Rompedores aún acechan en la clandestinidad, tramando planes para llevar a cabo el Gran Cambio que por fin libere al pueblo, mientras los nobles descontentos tratan de aumentar su influencia y sus prebendas. Orso intenta hallar un camino seguro en el laberinto de cuchillos que es la política, pero sus deudas y sus enemigos no dejan de aumentar. Ninguna alianza, ninguna amistad, ninguna paz, dura para siempre.', 419, 'Papel', STR_TO_DATE('15-06-2020', '%d-%m-%Y'), STR_TO_DATE('28-06-2020', '%d-%m-%Y'), STR_TO_DATE('12-03-2021', '%d-%m-%Y'), 1, 'Castellano', 4, 36, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362167.gif', 2);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-057-2', 'Fuego nocturno (Harry Bosch y Renée Ballard)', '', 'La nueva novela de Michael Connelly el maestro de la novela negra.Harry Bosch y la detective Ballard vuelven a unir fuerzas. Cuando era un detective de Homicidios novato, Harry Bosch tuvo un mentor que le enseñó a tomarse el trabajo de forma personal y prender la llama de la tenacidad para no dejar ni un caso sin resolver: John Jack Thompson. Este ha muerto, pero, tras su funeral, su viuda le entrega a Bosch el informe de un asesinato que Thompson se llevó consigo cuando dejó la Policía de Los Ángeles 20 años atrás: el caso abierto del asesinato de un joven con problemas en un callejón usado para trapicheos de drogas. Bosch le muestra el informe a Renée Ballard y le pide ayuda para averiguar por qué el caso disparó el interés de Thompson hace tantos años. Ese será su punto de partida. Bosch y Ballard se convierten en un equipo de investigación formidable y su vínculo se estrecha. Y pronto les surge una duda preocupante: ¿robó Thompson el informe para trabajar en el caso en su jubilación o para asegurarse de que nunca se resolviera?', 377, 'Papel', STR_TO_DATE('15-09-2019', '%d-%m-%Y'), STR_TO_DATE('28-04-2020', '%d-%m-%Y'), STR_TO_DATE('10-07-2020', '%d-%m-%Y'), 1, 'Castellano', 2, 58, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362057.gif', 3);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-223-1', 'Lo que te persigue (AdN)', '', 'La confirmación de un gran talento literarioIsrael es un vendedor de seguros y escritor en plena crisis de la mediana edad al que de pronto se le viene el mundo encima cuando, tras unas pruebas médicas, su madre debe ingresar en un hospital de Vigo, su ciudad.Son noches largas, en las que, a la espera de análisis y resultados, no parece fácil dormir, pero Israel tiene mucho en que pensar mientras deambula por los pasillos. Como en Mario, su hijo de nueve años, al que ha criado como suyo pero que ha empezado a hacer preguntas sobre su padre biológico; o la enfermedad aún sin nombre de su madre, y en ella y su fortaleza, también en su pasado como madre soltera y en todo lo que tuvo que vivir durante la primera infancia de Israel, como la extraña muerte de su tío Jaime; o en su hermano, Alberto, de viaje en Cuba y que afirma que regresará pronto con Yanelis, una desconocida con voz demasiado ronca que dice ser el amor de su vida; o en Agustina, la hija de la mujer con quien su madre comparte habitación en el hospital, una mujer excesivamente amable que parece ocultar algo... O la curiosa relación entre la tan soñada carrera literaria de Israel y su vida sexual, porque tras haber logrado al fin publicar una novela negra con una editorial prestigiosa, la intimidad con su mujer ya no ha vuelto a ser la misma.Pero, sobre todo, Israel, piensa, aunque no quiera, en Teresa Salgueiro, una aguerrida portuguesa de profundos ojos verdes que acaba de realizar un fallido asalto a un furgón blindado y ahora es una fugitiva de la policía. Teresa es la protagonista de su nueva novela. Esa que no debe escribir porque tiene cosas más importantes en que pensar...Con Lo que te persigue Óscar Montoya se consagra como uno de los autores más brillantes de su generación, con una prosa profunda y un talento único para la ironía.', 348, 'Papel', STR_TO_DATE('20-06-2020', '%d-%m-%Y'), STR_TO_DATE('21-08-2019', '%d-%m-%Y'), STR_TO_DATE('27-08-2020', '%d-%m-%Y'), 1, 'Castellano', 4, 23, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362223.gif', 3);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-206-5136-1', 'La metamorfosis', '', '«Al despertar Gregorio Samsa una mañana, tras un sueño intranquilo, se encontró en su cama convertido en un monstruoso insecto.» Tal es el abrupto comienzo, que nos sitúa de raíz bajo unas reglas distintas, de " La metamorfosis " , sin duda alguna la obra de Franz Kafka que ha alcanzado mayor celebridad. Escrito en 1912 y publicado en 1916, este relato es considerado una de las obras maestras del siglo xx por sus innegables rasgos precursores y el caudal de ideas e interpretaciones que desde siempre ha suscitado. Completan este volumen los relatos «Un artista del hambre» y «Un artista del trapecio».', 244, 'Papel', STR_TO_DATE('22-09-2020', '%d-%m-%Y'), STR_TO_DATE('21-06-2021', '%d-%m-%Y'), STR_TO_DATE('16-11-2021', '%d-%m-%Y'), 1, 'Castellano', 5, 25, 'https://static.cegal.es/imagenes/marcadas/9788420/978842065136.gif', 3);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-227-9', 'Una historia verdadera (AdN)', '', 'Una novela cautivadora y asombrosamente original sobre el acoso y el poder de las historias... y de quienes consiguen contarlas2015. Una escritora en la sombra, solitaria y con talento llamada Alice Lovett se gana la vida ayudando a otras personas a escribir historias. Sin embargo, a ella la persigue una historia propia que no puede narrar: la historia de «lo que pasó mientras dormía», como ella la define.1999. Nick Brothers y sus compañeros del equipo de lacrosse comienzan el último curso en un acomodado instituto de Maryland como los campeones estatales. Están en la cima del mundo, hasta que dos de sus amigos llevan a una chica a casa, después de que esta pierda el conocimiento en una de las fiestas «legendarias» del equipo, y de que un rumor sobre lo sucedido en el asiento de atrás del coche se extienda como la pólvora por el pueblo.Los jóvenes niegan las acusaciones y, al final, el pueblo pasa página. Pero no todos. Nick cae en el alcoholismo y Alice desarrolla una vida de vaivenes en la que se menosprecia a sí misma y confía en la gente equivocada. Cuando por fin tiene la oportunidad de enfrentarse al pasado que no recuerda -pero que ha conformado su vida-, ¿lo aceptará?Una historia verdadera es un análisis ingenioso y sobrecogedor de una mujer que busca su voz en las secuelas del trauma: una mezcla de thriller psicológico, delirio y análisis sobre la agresión sexual, el poder y la naturaleza de la verdad. Su chispeante estructura, llena de giros y vueltas, que mantendrá al lector en vilo hasta las últimas páginas, marca el debut de una nueva voz en la ficción, una voz singular y atrevida.', 183, 'Papel', STR_TO_DATE('29-08-2020', '%d-%m-%Y'), STR_TO_DATE('02-01-2021', '%d-%m-%Y'), STR_TO_DATE('25-08-2020', '%d-%m-%Y'), 1, 'Castellano', 5, 7, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362227.gif', 3);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-233-0', 'El explorador (AdN)', '', 'Una desaparición. Un pueblo pequeño. Una pregunta pendiente de respuesta...Cal Hooper pensaba que retirarse a un pueblo perdido de Irlanda y dedicarse a reformar una casita sería la gran evasión. Después de veinticinco años en el cuerpo de policía de Chicago, y tras un divorcio doloroso, lo único que quiere es construir una vida nueva en un sitio bonito donde haya un buen pub y nunca pase nada.Hasta que un buen día un chico del pueblo va a verlo para pedirle ayuda. Su hermano ha desaparecido y a nadie parece importarle, menos aún a la policía. Cal no quiere saber nada de ninguna investigación, pero algo indefinido le impide desentenderse.Cal no tardará en descubrir que incluso en el pueblecito más idílico se escoden secretos, la gente no es siempre lo que parece y los problemas pueden venir a llamar a tu puerta.La que es la más brillante escritora de suspense de nuestros días teje un magistral relato que corta la respiración por la belleza y la intriga que destila, al tiempo que reflexiona sobre cómo decidimos lo que está bien y lo que está mal en un mundo en que ni lo uno ni lo otro es tan sencillo, y a qué nos arriesgamos cuando nos equivocamos.', 267, 'Papel', STR_TO_DATE('05-02-2020', '%d-%m-%Y'), STR_TO_DATE('02-07-2019', '%d-%m-%Y'), STR_TO_DATE('27-08-2019', '%d-%m-%Y'), 1, 'Castellano', 3, 65, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362233.gif', 1);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-225-5', 'Los profetas (AdN)', '', 'Un debut singular e impresionante sobre la unión prohibida entre dos jóvenes esclavos en una plantación del Sur profundoIsaiah era de Samuel y Samuel era de Isaiah. Había sido así desde el principio, y así habría de ser hasta el final. En el establo cuidan de los animales, pero también el uno del otro, transformando la construcción hueca en un espacio de cobijo humano, una fuente de intimidad y esperanza en un mundo gobernado por crueles patrones. Sin embargo, cuando un hombre mayor, también él esclavo, pretende ganar favores predicando en la plantación el evangelio del amo, los cautivos empiezan a volverse contra los suyos. El amor de Isaiah y Samuel, tan sencillo en otros tiempos, se ve ahora como algo pecaminoso y un claro peligro para la armonía de la plantación.Con un lirismo que nos recuerda al de Toni Morrison, Robert Jones Jr. evoca con pasión las voces de amos y esclavos por igual, desde las de Isaiah y Samuel hasta las del calculador patrón o la larga estirpe de mujeres que los rodean, mujeres que han llevado siempre a sus espaldas el alma de la plantación. Conforme la tensión aumenta y el peso de los siglos -de los antepasados y de las generaciones que están por venir- acaba en un juicio culminante, Los profetas va revelándonos con maestría el dolor y el sufrimiento que supone el legado, aunque también hay hueco para la esperanza, la belleza y la verdad en el retrato que hace del poderoso y heroico poder del amor.', 83, 'Papel', STR_TO_DATE('02-12-2021', '%d-%m-%Y'), STR_TO_DATE('29-01-2020', '%d-%m-%Y'), STR_TO_DATE('06-05-2019', '%d-%m-%Y'), 1, 'Castellano', 2, 37, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362225.gif', 2);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-9181-551-8', '1080 recetas de cocina', '', '"1080 recetas de cocina" es un clásico por excelencia, y hoy podemos decir que, gracias a él, más de cinco millones de personas han aprendido, al margen de modas más o menos pasajeras, los secretos de la cocina y el bien comer. Reconocido por los grandes chefs de la cocina española, cuya relevancia ha trascendido con mucho el ámbito de nuestras fronteras, como su libro de cabecera y el referente imprescindible para toda persona que quiera acercarse a los fogones, "1080 recetas de cocina" no ha perdido un ápice de su vigencia, gracias también a la labor de revisión llevada a cabo por Inés Ortega, la hija de la insigne gastrónoma. Esta edición de bolsillo, en formato económico con nuevo diseño de interiores, nueva encuadernación y mejor legibilidad y localización de recetas e ingredientes (y que incluye también lámina protectora) incorpora las versiones más ligeras de un buen número de preparaciones. Sus 1080 recetas, que nunca fallan, reúnen el gusto por los platos sabrosos y la respuesta a toda persona interesada por las pautas actuales de una alimentación saludable y sostenible.', 137, 'Papel', STR_TO_DATE('30-11-2020', '%d-%m-%Y'), STR_TO_DATE('11-01-2020', '%d-%m-%Y'), STR_TO_DATE('01-07-2019', '%d-%m-%Y'), 1, 'Castellano', 5, 34, 'https://static.cegal.es/imagenes/marcadas/9788491/978849181551.gif', 3);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-327-6', 'La chica oculta y otros relatos', '', 'Esta colección incluye una selección de la ficción especulativa de Liu en los últimos cinco años: dieciocho de sus mejores relatos y un fragmento de El trono velado, el tercer volumen de la serie de fantasía épica La Dinastía del Diente de León. Desde narraciones sobre asesinos que viajan en el tiempo o sobre criptomonedas hasta conmovedoras historias de relaciones entre padres e hijos, los relatos de este volumen exploran temas importantes para el presente y arrojan una mirada visionaria al futuro de la humanidad.', 82, 'Papel', STR_TO_DATE('06-11-2019', '%d-%m-%Y'), STR_TO_DATE('08-01-2020', '%d-%m-%Y'), STR_TO_DATE('04-12-2021', '%d-%m-%Y'), 1, 'Castellano', 7, 22, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362327.gif', 4);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-9181-807-6', 'Mi dulce niña (AdN)', '', 'Una cabaña sin ventanas en medio del bosque. La vida de Lena y sus dos hijos sigue reglas estrictas: los horarios para comer, ir al baño o estudiar se respetan a rajatabla. El oxígeno les llega a través de un «aparato de circulación». El padre provee a la familia de alimentos, los protege de los peligros del mundo exterior, se ocupa de que sus hijos siempre tengan una madre. Pero un día consiguen escapar... y es entonces cuando empieza la verdadera pesadilla. Porque todo parece indicar que el secuestrador quiere recuperar lo es suyo. En un thriller tan emocionalmente impactante como profundamente conmovedor, Romy Hausmann va desplegando línea a línea el panorama de un horror que sobrepasa toda capacidad de imaginación.', 243, 'Papel', STR_TO_DATE('06-10-2020', '%d-%m-%Y'), STR_TO_DATE('26-11-2019', '%d-%m-%Y'), STR_TO_DATE('02-06-2019', '%d-%m-%Y'), 1, 'Castellano', 8, 56, 'https://static.cegal.es/imagenes/marcadas/9788491/978849181807.gif', 5);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-206-7429-2', 'El lobo estepario', '', 'Encrucijada de todas las obsesiones e intuiciones de Hermann Hesse (1877-1962) y exponente de su singular talento para el relato, El lobo estepario se inscribe dentro del empeño, patente a lo largo de toda su obra, por iluminar la zona oscura de la condición humana a fin de poner al descubierto su carga trágica y su incierto destino. Ser solitario e incomunicado, extraño y extrañado, Harry Haller, protagonista de esta emblemática novela, ha acabado convirtiéndose en un arquetipo literario en el que se reconocen quienes padecen los efectos deshumanizadores de una sociedad que no conoce la solidaridad y propicia el aislamiento.', 384, 'Papel', STR_TO_DATE('21-01-2020', '%d-%m-%Y'), STR_TO_DATE('05-01-2021', '%d-%m-%Y'), STR_TO_DATE('07-12-2020', '%d-%m-%Y'), 1, 'Castellano', 4, 26, 'https://static.cegal.es/imagenes/marcadas/9788420/978842067429.gif', 6);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-263-7', 'Freddie Mercury', '', 'Una cabaña sin ventanas en medio del bosque. La vida de Lena y sus dos hijos sigue reglas estrictas: los horarios para comer, ir al baño o estudiar se respetan a rajatabla. El oxígeno les llega a través de un «aparato de circulación». El padre provee a la familia de alimentos, los protege de los peligros del mundo exterior, se ocupa de que sus hijos siempre tengan una madre. Pero un día consiguen escapar... y es entonces cuando empieza la verdadera pesadilla. Porque todo parece indicar que el secuestrador quiere recuperar lo es suyo. En un thriller tan emocionalmente impactante como profundamente conmovedor, Romy Hausmann va desplegando línea a línea el panorama de un horror que sobrepasa toda capacidad de imaginación.', 469, 'Papel', STR_TO_DATE('29-05-2019', '%d-%m-%Y'), STR_TO_DATE('13-05-2021', '%d-%m-%Y'), STR_TO_DATE('30-03-2021', '%d-%m-%Y'), 1, 'Castellano', 33, 38, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362263.gif', 1);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION,
                   FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA,
                   ID_EDITORIAL) VALUE ('978-84-1362-266-8', 'Hero: David Bowie', '',
                                        'Mundialmente aclamado como el artista más innovador de su generación, David Bowie destacó como músico y compositor, pero también mostró su talento como pintor, actor y productor. Lesley-Ann Jones lo conoció desde su infancia, en la pequeña localidad de Bromley, al sur de Londres. Ya entonces era un joven desesperado por expresar su talento, frustrado por un entorno que lo ahogaba y determinado a conseguir el reconocimiento y la fortuna que sin duda merecía. Con el trasfondo de la evolución del pop y del rock en los últimos cincuenta años, y a través de entrevistas con amigos íntimos y con colaboradores que lo trataron a lo largo de su carrera, y que nunca antes habían contado sus experiencias personales, la autora nos ofrece una biografía única que refleja al mismo tiempo la vida pública y privada de un artista que marcó una época.',
                                        165, 'Papel', STR_TO_DATE('26-11-2019',
                                        '%d-%m-%Y'), STR_TO_DATE('09-02-2021', '%d-%m-%Y'), STR_TO_DATE('24-10-2019', '%d-%m-%Y'), 1, 'Castellano', 2, 44, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362266.gif', 4);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION,
                   FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA,
                   ID_EDITORIAL) VALUE ('978-84-1362-264-4', 'Lou Reed: Su vida', '',
                                        'Lou Reed componía canciones sobre las drogas, la sordidez, la sexualidad transgresora, las prostitutas honorables y los buscavidas de tres al cuarto. También compuso algunas de las canciones de amor más conmovedoras de su época, desde "Pale Blue Eyes" hasta "Perfect Day". Arrancó desde el punto donde lo había dejado el rock. Antes de él, el rock tenía que ver con la diversión. Después de él, el rock fue literario, sombrío, y por encima de todo inquietantemente sincero. Siempre una generación por delante, nunca recibió lo que se merecía hasta cuando era ya demasiado tarde. La historia de Lou Reed está llena de esas contradicciones.',
                                        383, 'Papel', STR_TO_DATE('01-06-2020',
                                        '%d-%m-%Y'), STR_TO_DATE('28-06-2019', '%d-%m-%Y'), STR_TO_DATE('25-11-2019', '%d-%m-%Y'), 1, 'Castellano', 3, 10, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362264.gif', 4);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION,
                   FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA,
                   ID_EDITORIAL) VALUE ('978-84-1362-265-1', 'Prince. El reino púrpura', '',
                                        'Prince fue un icono universal. Un creador que definió una era musical y transformó el aspecto de la cultura popular para siempre. Este libro ofrece una perspectiva de la vida de Prince, sin tabúes ni concesiones, como nunca se había hecho antes. Desde su traumática infancia, en la que buscó en la música de manera obsesiva una vía de escape a la infelicidad, hasta su ascenso al estrellato, pasando por un sinfín de rivalidades profesionales y, también, varios matrimonios fallidos. Y todo ello sin olvidar el fino análisis de sus renovados proyectos musicales a través de comentarios del propio Prince, de sus músicos y de quienes lo conocieron en primera persona.',
                                        69, 'Papel', STR_TO_DATE('05-07-2019',
                                        '%d-%m-%Y'), STR_TO_DATE('08-11-2019', '%d-%m-%Y'), STR_TO_DATE('13-08-2020', '%d-%m-%Y'), 1, 'Castellano', 4, 76, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362265.gif', 4);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION,
                   FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA,
                   ID_EDITORIAL) VALUE ('978-84-9181-681-2', 'El naufragio de las civilizaciones', '',
                                        'Cuando los espectaculares avances tecnológicos de nuestros días nos han facilitado el acceso al conocimiento como nunca hasta ahora, que vivamos más y mejor, que el "tercer mundo" se desarrolle..., cuando por primera vez se podría conducir a la humanidad hacia una era de libertad y progreso, el mundo parece ir en dirección opuesta, hacia la destrucción de todo lo conseguido. ¿Cómo hemos llegado hasta aquí? Hace unos años, Amin Maalouf nos hablaba de que "nuestras civilizaciones se agotan" en "El desajuste del mundo" y en "Identidades asesinas", y aportaba las razones: la desconfianza hacia el "Otro", la xenofobia, la intolerancia política y religiosa, el populismo, el individualismo y la insolidaridad del nacionalismo, el racismo... Hoy en día ya nos habla directamente de "naufragio inminente". No hay añoranza de un pasado mejor en sus palabras, solo le preocupa el futuro de esta "época desconcertante", el porvenir de las nuevas generaciones, que pueda desaparecer lo que ha dado sentido a la aventura humana. Tampoco se deja llevar por el pesimismo ni quiere predicar el desaliento, solo hace una llamada lúcida a la responsabilidad colectiva, dejando entreabierta la puerta de la esperanza a que el mundo vuelva a orientarse, ya que como escribió en su novela "Los desorientados": "Más vale equivocarse en la esperanza que acertar en la desesperación".',
                                        131, 'Papel', STR_TO_DATE('03-09-2020',
                                        '%d-%m-%Y'), STR_TO_DATE('07-04-2021', '%d-%m-%Y'), STR_TO_DATE('24-05-2019', '%d-%m-%Y'), 1, 'Castellano', 1, 70, 'https://static.cegal.es/imagenes/marcadas/9788491/978849181681.gif', 4);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION,
                   FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA,
                   ID_EDITORIAL) VALUE ('978-84-1362-100-5', '1080 recetas de cocina', '',
                                        '"1080 recetas de cocina" es un clásico por excelencia, y hoy podemos decir que, gracias a él, más de cinco millones de personas han aprendido, al margen de modas más o menos pasajeras, los secretos de la cocina y el bien comer. Reconocido por los grandes',
                                        246, 'Papel', STR_TO_DATE('14-10-2021',
                                        '%d-%m-%Y'), STR_TO_DATE('22-09-2019', '%d-%m-%Y'), STR_TO_DATE('17-03-2021', '%d-%m-%Y'), 1, 'Castellano', 8, 99, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362100.gif', 4);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION,
                   FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA,
                   ID_EDITORIAL) VALUE ('978-84-206-7415-5', 'Mi familia y otros animales', '',
                                        'Gerald Durrell combina en sus libros el retrato de gentes y lugares, la autobiografía y un insuperable sentido del humor. Mi familia y otros animales es sin duda su obra más conocida y celebrada. Primera parte de su divertida trilogía de Corfú, que prosigue con Bichos y demás parientes y El jardín de los dioses, la obra nos presenta una ágil y graciosa galería de personajes, como Larry -Lawrence Durrell, el futuro autor del «Cuarteto de Alejandría»- y sus estrafalarias amistades, mamá Durrell y su inagotable sentido común, o Spiro, el corfuano angloparlante, junto con toda una serie de animales retratados como sólo puede hacerlo quien a lo largo de toda una vida los ha considerado con inteligencia y ternura.',
                                        212, 'Papel', STR_TO_DATE('01-03-2020',
                                        '%d-%m-%Y'), STR_TO_DATE('06-11-2019', '%d-%m-%Y'), STR_TO_DATE('29-04-2020', '%d-%m-%Y'), 1, 'Castellano', 0, 46, 'https://static.cegal.es/imagenes/marcadas/9788420/978842067415.gif', 1);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION,
                   FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA,
                   ID_EDITORIAL) VALUE ('978-84-1362-059-6', 'El cerebro', '',
                                        'EL CEREBRO presenta al lector, de manera inteligente y asequible, y también con mucho humor pero sin caer en la divulgación trivial, todos los aspectos relacionados con el cerebro humano: percepción, inteligencia, consciencia, pensamiento, memoria, aprendizaje, creatividad, voluntad, sociabilidad, sueño, recuperación. Este conjunto de temas es tratado de manera amena mediante ejemplos, actividades, infografías y esquemas. Al finalizar cada bloque se ofrecen experimentos ingeniosos y fascinantes que ayudan al lector a poner en práctica cómo funciona el cerebro, el dispositivo de procesamiento de información más complejo del universo. Divulgación científica de calidad de la mano de New Scientist, el semanario sobre temas científicos más vendido en el mundo, que acompaña al lector en un viaje a través de toda la variedad de peculiaridades del cerebro humano.',
                                        297, 'Papel', STR_TO_DATE('07-07-2021',
                                        '%d-%m-%Y'), STR_TO_DATE('30-05-2021', '%d-%m-%Y'), STR_TO_DATE('07-01-2020', '%d-%m-%Y'), 1, 'Castellano', 20, 77, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362059.gif', 2);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION,
                   FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA,
                   ID_EDITORIAL) VALUE ('978-84-1362-239-2', 'Algo de feminismo y otros escritos combativos', '',
                                        'Conocida durante mucho tiempo principalmente como la introductora de la corriente naturalista en España por medio de sus novelas "Los Pazos de Ulloa" y "La madre naturaleza", Emilia Pardo Bazán (1851-1921) fue una mujer a la vanguardia de su época, beligerante defensora del valor de la mujer. «La clave de nuestra regeneración -declaraba en 1914, hace más de un siglo, a El Caballero Audaz- está en la mujer, en su instrucción, en su personalidad, en su conciencia. España se explica por la situación de sus mujeres, por el sarracenismo de sus hombres». La presente selección reúne los textos principales en que la autora dio a conocer sus ideas y su parecer acerca de la situación subalterna de la mujer en España, valorándola como una de las grandes rémoras del país. Por desgracia, sus textos no son hoy material de museo, sino que, leyendo entre líneas y siendo conscientes de los mecanismos de la sociedad actual, en muchos sentidos siguen teniendo plena vigencia. Selección e introducción de Marisa Sotelo Vázquez',
                                        94, 'Papel', STR_TO_DATE('15-12-2020',
                                        '%d-%m-%Y'), STR_TO_DATE('11-08-2019', '%d-%m-%Y'), STR_TO_DATE('07-08-2020', '%d-%m-%Y'), 1, 'Castellano', 4, 92, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362239.gif', 3);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION,
                   FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA,
                   ID_EDITORIAL) VALUE ('978-84-1362-169-2', 'El Horla. Cuentos fantásticos y de horror', '',
                                        'Si bien fueron sus espléndidas novelas, como "Bel Ami" o "Fuerte como la muerte", las que valieron en su día a Guy de Maupassant (1850-1893) fama y dinero, no es menos cierto que su regular labor como cuentista en publicaciones de la época ha aportado no poco a consolidar su renombre en tiempos posteriores. "El Horla: Cuentos fantásticos y de horror" agrupa los mejores de sus relatos entre los que se podría decir concebidos para provocar una desazón en el lector. Sea su ingrediente principal el misterio, la locura, lo irracional, el miedo o la obsesión de la soledad, o bien el sexo, la violencia y la sangre, propia o ajena, todos ellos giran, en suma, en torno a un incidente de carácter extraordinario por inexplicable o anómalo, por arrebatado o por atroz. Traducción de Esther Benítez',
                                        176, 'Papel', STR_TO_DATE('22-08-2021',
                                        '%d-%m-%Y'), STR_TO_DATE('06-08-2019', '%d-%m-%Y'), STR_TO_DATE('12-07-2019', '%d-%m-%Y'), 1, 'Castellano', 2, 71, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362169.gif', 4);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION,
                   FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA,
                   ID_EDITORIAL) VALUE ('978-84-1362-305-4', 'La búsqueda del Santo Grial', '',
                                        'Obra perteneciente al ciclo de leyendas artúricas conocido como la Vulgata, en La búsqueda del Santo Grial ciento cincuenta caballeros de la Mesa Redonda parten de Camelot dispuestos a arrostrar todo tipo de peligros con tal de recuperar el cáliz llevado a Inglaterra por los descendientes de José de Arimatea y conservado en el castillo de Corbenic. De ellos, sin embargo, sólo tres -Boores, Perceval y Galaz- conseguirán coronar la aventura, y de éstos sólo uno, Galaz, modelo de caballero en quien el ascetismo y la castidad se funden con la ayuda divina, llegará a conocer los secretos del Santo Grial.',
                                        248, 'Papel', STR_TO_DATE('24-07-2021',
                                        '%d-%m-%Y'), STR_TO_DATE('21-09-2019', '%d-%m-%Y'), STR_TO_DATE('29-06-2020', '%d-%m-%Y'), 1, 'Castellano', 1, 67, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362305.gif', 5);
UPDATE LIBRO
SET NOMBRE_PORTADA = '7eae4fdd-fd5a-4a7e-8587-a5ab8b8dc201.gif'
WHERE ISBN = '978-84-08-24066-2';
UPDATE LIBRO
SET NOMBRE_PORTADA = '62446626-809c-4747-9a48-eac50b5f785c.gif'
WHERE ISBN = '978-84-08-23551-4';
UPDATE LIBRO
SET NOMBRE_PORTADA = '81105a1e-a558-40b1-83a6-8907ffa0b645.gif'
WHERE ISBN = '978-84-08-23500-2';
UPDATE LIBRO
SET NOMBRE_PORTADA = '64a6831d-a658-45bd-b132-5c49b4fa25ed.gif'
WHERE ISBN = '978-84-08-23552-1';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'e8804f94-bfde-4d00-bf89-31864a5eaba8.gif'
WHERE ISBN = '978-84-08-22469-3';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'b32adcf5-618c-4c8d-9aa4-e59692f6cc0a.gif'
WHERE ISBN = '978-84-08-23910-9';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'c8463fb5-8b73-42cb-8f21-709dc83cb841.gif'
WHERE ISBN = '978-84-08-24071-6';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'c9becd34-1175-448e-a5b3-a2e6b6ff01e8.gif'
WHERE ISBN = '978-84-1341-512-3';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'f00d7182-335c-4f3c-95e3-3e12b500971a.gif'
WHERE ISBN = '978-84-08-23455-5';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'e7a9ad88-5d27-432c-86a0-b997cee8e6e3.gif'
WHERE ISBN = '978-84-08-24228-4';
UPDATE LIBRO
SET NOMBRE_PORTADA = '6c16f0b1-efd0-4ba3-ac61-fb5eed0a9d63.gif'
WHERE ISBN = '978-84-08-22983-4';
UPDATE LIBRO
SET NOMBRE_PORTADA = '26a91dd2-ec59-4f0e-b941-eb86a9a2072b.gif'
WHERE ISBN = '978-84-08-24226-0';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'd96ff536-da15-474f-9b17-efd30faab887.gif'
WHERE ISBN = '978-84-08-24133-1';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'ea941392-9be0-4ffa-adf3-b6aea0c5113f.gif'
WHERE ISBN = '978-84-08-24216-1';
UPDATE LIBRO
SET NOMBRE_PORTADA = '303a1270-8718-48e2-9d4f-47c66532114e.gif'
WHERE ISBN = '978-84-08-24010-5';
UPDATE LIBRO
SET NOMBRE_PORTADA = '3608ab16-d744-4b45-85f9-356a6c983928.gif'
WHERE ISBN = '978-84-08-24124-9';
UPDATE LIBRO
SET NOMBRE_PORTADA = '3ba2399e-b95a-44f7-ae4f-d895f3832bbd.gif'
WHERE ISBN = '978-84-08-24227-7';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'da5889bb-97af-4d3f-bb08-df854e683ae4.gif'
WHERE ISBN = '978-84-08-24123-2';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'c6219484-91f9-46c1-868b-cd0c92f2e79b.gif'
WHERE ISBN = '978-84-1362-249-1';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'bf6f865a-2126-412c-b55b-ceee4822f53c.gif'
WHERE ISBN = '978-84-9142-439-0';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'a7787039-c3ed-4cfd-9144-433e8465cff8.gif'
WHERE ISBN = '978-84-7898-701-6';
UPDATE LIBRO
SET NOMBRE_PORTADA = '2342f8b8-3394-4d1a-9451-afe7bb8fc6c9.gif'
WHERE ISBN = '978-84-9142-458-1';
UPDATE LIBRO
SET NOMBRE_PORTADA = '26e3602a-a7dd-49a8-89da-bb5f2f1d8ffa.gif'
WHERE ISBN = '978-84-7898-538-8';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'cd22e1f3-4192-4504-9ab0-dfae16b218f1.gif'
WHERE ISBN = '978-84-7898-803-7';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'fe57688c-1d92-408c-a2d0-e62b9579f8d5.gif'
WHERE ISBN = '978-84-7898-629-3';
UPDATE LIBRO
SET NOMBRE_PORTADA = '0ecb1be8-edaa-4250-b725-110f34776d95.gif'
WHERE ISBN = '978-84-9142-292-1';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'bcf72ecf-a407-40a9-9e75-6ebc0871da56.gif'
WHERE ISBN = '978-84-7898-541-8';
UPDATE LIBRO
SET NOMBRE_PORTADA = '0ae22a09-6523-4b1b-98ad-5e338a482e00.gif'
WHERE ISBN = '978-84-9181-995-0';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'e16d27cd-9650-4fcb-875e-c59f48861433.gif'
WHERE ISBN = '978-84-1362-121-0';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'fc1fa9d8-3249-4646-8101-f4dca67201e7.gif'
WHERE ISBN = '978-84-206-7420-9';
UPDATE LIBRO
SET NOMBRE_PORTADA = '88a417ee-6016-4a93-965f-33eef9309c8f.gif'
WHERE ISBN = '978-84-1362-213-2';
UPDATE LIBRO
SET NOMBRE_PORTADA = '2462394a-95a8-46c7-8d03-150a95242edd.gif'
WHERE ISBN = '978-84-206-7417-9';
UPDATE LIBRO
SET NOMBRE_PORTADA = '912844a6-e17f-47ea-8bf5-01a8423433fc.gif'
WHERE ISBN = '978-84-1362-202-6';
UPDATE LIBRO
SET NOMBRE_PORTADA = '3f618413-eb87-4c4b-bd9c-49c3394f4082.gif'
WHERE ISBN = '978-84-1362-215-6';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'c10072aa-0858-4748-a51d-f57d4a58e56f.gif'
WHERE ISBN = '978-84-1362-219-4';
UPDATE LIBRO
SET NOMBRE_PORTADA = '1ded475e-701a-4af1-a9f5-451a0f075dde.gif'
WHERE ISBN = '978-84-1362-204-0';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'f99d8a59-2d66-45e2-a2af-aa36d3a7f9df.gif'
WHERE ISBN = '978-84-1362-221-7';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'baa42dab-63ff-41ee-8d9f-4b1a61b11c7b.gif'
WHERE ISBN = '978-84-1362-167-8';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'a9877dcb-6bff-4bb2-b797-983a6d61ee3f.gif'
WHERE ISBN = '978-84-1362-057-2';
UPDATE LIBRO
SET NOMBRE_PORTADA = '0193a6dd-e079-45e5-b1e5-3089d35964b7.gif'
WHERE ISBN = '978-84-1362-223-1';
UPDATE LIBRO
SET NOMBRE_PORTADA = '75f86445-31a7-4dd4-9a82-20e605033a8c.gif'
WHERE ISBN = '978-84-206-5136-1';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'bd678e31-3220-4209-8ba5-b839f4b3a7de.gif'
WHERE ISBN = '978-84-1362-227-9';
UPDATE LIBRO
SET NOMBRE_PORTADA = '2fca78dc-2802-4fe8-9057-a34f1f7e81df.gif'
WHERE ISBN = '978-84-1362-233-0';
UPDATE LIBRO
SET NOMBRE_PORTADA = '1bd4c2ac-ad84-4a7e-b412-7e16b312c085.gif'
WHERE ISBN = '978-84-1362-225-5';
UPDATE LIBRO
SET NOMBRE_PORTADA = '663a6c87-bb59-49e7-969c-e68240bacffa.gif'
WHERE ISBN = '978-84-9181-551-8';
UPDATE LIBRO
SET NOMBRE_PORTADA = '8d621a4a-c88b-45ab-95d5-940ea2a730f1.gif'
WHERE ISBN = '978-84-1362-327-6';
UPDATE LIBRO
SET NOMBRE_PORTADA = '2ebfc7b4-9b3e-41cd-8585-5278a03c2a04.gif'
WHERE ISBN = '978-84-9181-807-6';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'f6e411c2-567f-4444-b972-05a6c07c4277.gif'
WHERE ISBN = '978-84-206-7429-2';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'c6084153-cf20-4352-a734-065b12571688.gif'
WHERE ISBN = '978-84-1362-263-7';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'c7e8dac3-e2ab-48a6-864f-64b9f8e55dea.gif'
WHERE ISBN = '978-84-1362-266-8';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'acdebbbc-c9a2-45fa-b4f8-d81295c1697b.gif'
WHERE ISBN = '978-84-1362-264-4';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'e49c81f9-6e95-4045-8e52-3e7e2628a30f.gif'
WHERE ISBN = '978-84-1362-265-1';
UPDATE LIBRO
SET NOMBRE_PORTADA = '456689a0-da93-41b9-8737-6ce4c7091477.gif'
WHERE ISBN = '978-84-9181-681-2';
UPDATE LIBRO
SET NOMBRE_PORTADA = '74ceb2b0-fffb-4523-b798-2a3879007468.gif'
WHERE ISBN = '978-84-1362-100-5';
UPDATE LIBRO
SET NOMBRE_PORTADA = '97da1272-fa9f-4d84-a03b-42213a4ba2bd.gif'
WHERE ISBN = '978-84-206-7415-5';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'c7cd4cbb-7e9b-4058-8d50-20a43cbd12ed.gif'
WHERE ISBN = '978-84-1362-059-6';
UPDATE LIBRO
SET NOMBRE_PORTADA = '9699d1d0-5148-449c-baae-652e9173e796.gif'
WHERE ISBN = '978-84-1362-239-2';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'cfc2e58f-faf7-4363-8c27-88fe86982b5e.gif'
WHERE ISBN = '978-84-1362-169-2';
UPDATE LIBRO
SET NOMBRE_PORTADA = 'f6b6b20d-91ed-4722-952e-1c60fe3c7e3e.gif'
WHERE ISBN = '978-84-1362-305-4';

-- LIBRO_AUTOR
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR)
VALUES (1, 1);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR)
VALUES (2, 2);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR)
VALUES (3, 3);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR)
VALUES (4, 4);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR)
VALUES (5, 5);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR)
VALUES (6, 1);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR)
VALUES (7, 2);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR)
VALUES (8, 3);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (9, 4);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (10, 5);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (11, 6);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (12, 7);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (13, 1);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (14, 2);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (15, 3);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (16, 4);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (17, 1);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (18, 2);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (19, 3);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (20, 4);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (21, 5);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (22, 6);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (23, 7);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (24, 1);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (25, 2);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (26, 3);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (27, 4);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (28, 5);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (29, 6);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (30, 7);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (31, 1);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (32, 2);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (33, 3);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (34, 4);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (35, 5);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (36, 6);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (37, 7);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (38, 1);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (39, 2);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (40, 3);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (41, 4);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (42, 5);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (43, 6);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (44, 7);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (45, 1);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (46, 2);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (47, 3);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (48, 4);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (49, 5);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (50, 6);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (51, 7);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (52, 1);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (53, 2);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (54, 3);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (55, 4);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (56, 5);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (57, 6);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (58, 7);
INSERT INTO LIBRO_AUTOR (ID_LIBRO, ID_AUTOR) VALUES (59, 1);

-- LIBRO_TEMATICA
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (1, 1);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (1, 2);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (2, 3);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (2, 4);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (2, 5);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (3, 6);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (4, 7);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (4, 1);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (4, 2);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (5, 3);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (5, 4);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (6, 5);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (6, 6);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (6, 7);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (6, 1);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (7, 2);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (7, 3);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (8, 4);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (8, 5);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (9, 6);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (9, 7);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (10, 1);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (10, 2);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (10, 3);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (11, 4);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (11, 5);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (12, 6);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (12, 7);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (12, 1);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (13, 2);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (13, 3);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (14, 4);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (14, 5);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (14, 6);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (15, 7);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (15, 1);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (16, 2);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (16, 3);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (16, 4);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (17, 5);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (17, 6);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (18, 7);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (18, 1);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (18, 2);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (19, 3);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (19, 4);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (20, 5);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (20, 6);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (20, 7);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (21, 1);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (21, 2);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (22, 3);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (22, 4);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (23, 5);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (23, 6);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (23, 7);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (24, 1);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (24, 2);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (25, 3);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (25, 4);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (25, 5);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (26, 6);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (26, 7);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (27, 1);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (27, 2);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (27, 3);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (28, 4);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (28, 5);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (29, 6);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (29, 7);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (29, 1);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (30, 2);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (30, 3);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (31, 4);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (31, 5);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (31, 6);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (32, 7);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (32, 1);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (33, 2);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (33, 3);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (34, 4);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (34, 5);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (34, 6);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (35, 7);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (35, 1);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (36, 2);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (36, 3);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (36, 4);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (37, 5);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (37, 6);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (38, 7);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (38, 1);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (38, 2);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (39, 3);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (39, 4);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (40, 5);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (40, 6);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (40, 7);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (41, 1);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (41, 2);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (42, 3);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (42, 4);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (42, 5);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (43, 6);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (43, 7);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (44, 1);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (44, 2);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (45, 3);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (45, 4);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (45, 5);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (46, 6);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (46, 7);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (47, 1);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (47, 2);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (47, 3);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (48, 4);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (48, 5);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (49, 6);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (49, 7);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (49, 1);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (50, 2);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (50, 3);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (51, 4);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (51, 5);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (51, 6);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (52, 7);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (52, 1);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (53, 2);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (53, 3);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (53, 4);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (54, 5);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (54, 6);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (55, 7);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (55, 1);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (56, 2);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (56, 3);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (56, 4);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (57, 5);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (57, 6);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (58, 7);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (58, 1);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (58, 2);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (59, 3);
INSERT INTO LIBRO_TEMATICA (ID_LIBRO, ID_TEMATICA) VALUES (59, 4);

-- LIBRO_COLECCION
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (1, 1);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (2, 2);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (3, 3);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (4, 4);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (5, 5);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (6, 1);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (7, 2);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (8, 3);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (9, 4);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (10, 5);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (11, 1);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (12, 2);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (13, 3);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (14, 4);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (15, 5);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (16, 1);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (17, 2);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (18, 3);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (19, 4);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (20, 5);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (21, 1);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (22, 2);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (23, 3);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (24, 4);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (25, 5);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (26, 1);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (27, 2);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (28, 3);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (29, 4);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (30, 5);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (31, 1);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (32, 2);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (33, 3);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (34, 4);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (35, 5);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (36, 1);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (37, 2);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (38, 3);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (39, 4);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (40, 5);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (41, 1);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (42, 2);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (43, 3);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (44, 4);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (45, 5);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (46, 1);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (47, 2);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (48, 3);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (49, 4);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (50, 5);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (51, 1);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (52, 2);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (53, 3);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (54, 4);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (55, 5);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (56, 1);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (57, 2);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (58, 3);
INSERT INTO LIBRO_COLECCION (ID_LIBRO, ID_COLECCION) VALUES (59, 4);

-- COMPRA
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('20-04-2021', '%d-%m-%Y'), STR_TO_DATE('20-04-2021', '%d-%m-%Y'), 7, 2, 2, 1, 1);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), STR_TO_DATE('28-04-2021', '%d-%m-%Y'), 7, 3, 2, 2, 2);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), STR_TO_DATE('28-04-2021', '%d-%m-%Y'), 7, 4, 2, 3, 3);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('13-04-2021', '%d-%m-%Y'), STR_TO_DATE('13-04-2021', '%d-%m-%Y'), 7, 5, 2, 4, 4);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('01-05-2021', '%d-%m-%Y'), STR_TO_DATE('01-05-2021', '%d-%m-%Y'), 7, 6, 2, 5, 5);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('11-05-2021', '%d-%m-%Y'), STR_TO_DATE('11-05-2021', '%d-%m-%Y'), 7, 7, 2, 6, 6);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('29-04-2021', '%d-%m-%Y'), STR_TO_DATE('29-04-2021', '%d-%m-%Y'), 7, 8, 2, 7, 7);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('19-04-2021', '%d-%m-%Y'), STR_TO_DATE('19-04-2021', '%d-%m-%Y'), 7, 9, 2, 8, 8);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('11-05-2021', '%d-%m-%Y'), STR_TO_DATE('11-05-2021', '%d-%m-%Y'), 7, 10, 2, 9, 9);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('10-05-2021', '%d-%m-%Y'), STR_TO_DATE('10-05-2021', '%d-%m-%Y'), 7, 11, 2, 10, 10);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('11-05-2021', '%d-%m-%Y'), STR_TO_DATE('11-05-2021', '%d-%m-%Y'), 7, 2, 2, 1, 1);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('02-05-2021', '%d-%m-%Y'), STR_TO_DATE('02-05-2021', '%d-%m-%Y'), 7, 3, 2, 2, 2);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('10-05-2021', '%d-%m-%Y'), STR_TO_DATE('10-05-2021', '%d-%m-%Y'), 7, 4, 2, 3, 3);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('11-05-2021', '%d-%m-%Y'), STR_TO_DATE('11-05-2021', '%d-%m-%Y'), 7, 5, 2, 4, 4);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('18-04-2021', '%d-%m-%Y'), STR_TO_DATE('18-04-2021', '%d-%m-%Y'), 7, 6, 2, 5, 5);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('26-04-2021', '%d-%m-%Y'), STR_TO_DATE('26-04-2021', '%d-%m-%Y'), 7, 7, 2, 6, 6);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('18-04-2021', '%d-%m-%Y'), STR_TO_DATE('18-04-2021', '%d-%m-%Y'), 7, 8, 2, 7, 7);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('11-05-2021', '%d-%m-%Y'), STR_TO_DATE('11-05-2021', '%d-%m-%Y'), 7, 9, 2, 8, 8);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('18-04-2021', '%d-%m-%Y'), STR_TO_DATE('18-04-2021', '%d-%m-%Y'), 7, 10, 2, 9, 9);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('19-04-2021', '%d-%m-%Y'), STR_TO_DATE('19-04-2021', '%d-%m-%Y'), 7, 11, 2, 10, 10);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), STR_TO_DATE('28-04-2021', '%d-%m-%Y'), 7, 2, 2, 1, 1);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('21-04-2021', '%d-%m-%Y'), STR_TO_DATE('21-04-2021', '%d-%m-%Y'), 7, 3, 2, 2, 2);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('04-05-2021', '%d-%m-%Y'), STR_TO_DATE('04-05-2021', '%d-%m-%Y'), 7, 4, 2, 3, 3);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('05-05-2021', '%d-%m-%Y'), STR_TO_DATE('05-05-2021', '%d-%m-%Y'), 7, 5, 2, 4, 4);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('09-05-2021', '%d-%m-%Y'), STR_TO_DATE('09-05-2021', '%d-%m-%Y'), 7, 6, 2, 5, 5);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('21-04-2021', '%d-%m-%Y'), STR_TO_DATE('21-04-2021', '%d-%m-%Y'), 7, 7, 2, 6, 6);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('06-05-2021', '%d-%m-%Y'), STR_TO_DATE('06-05-2021', '%d-%m-%Y'), 7, 8, 2, 7, 7);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('10-05-2021', '%d-%m-%Y'), STR_TO_DATE('10-05-2021', '%d-%m-%Y'), 7, 9, 2, 8, 8);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('13-04-2021', '%d-%m-%Y'), STR_TO_DATE('13-04-2021', '%d-%m-%Y'), 7, 10, 2, 9, 9);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('10-05-2021', '%d-%m-%Y'), STR_TO_DATE('10-05-2021', '%d-%m-%Y'), 7, 11, 2, 10, 10);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), STR_TO_DATE('12-04-2021', '%d-%m-%Y'), 7, 2, 2, 1, 1);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('29-04-2021', '%d-%m-%Y'), STR_TO_DATE('29-04-2021', '%d-%m-%Y'), 7, 3, 2, 2, 2);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('20-04-2021', '%d-%m-%Y'), STR_TO_DATE('20-04-2021', '%d-%m-%Y'), 7, 4, 2, 3, 3);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('10-05-2021', '%d-%m-%Y'), STR_TO_DATE('10-05-2021', '%d-%m-%Y'), 7, 5, 2, 4, 4);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('09-05-2021', '%d-%m-%Y'), STR_TO_DATE('09-05-2021', '%d-%m-%Y'), 7, 6, 2, 5, 5);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('05-05-2021', '%d-%m-%Y'), STR_TO_DATE('05-05-2021', '%d-%m-%Y'), 7, 7, 2, 6, 6);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), STR_TO_DATE('28-04-2021', '%d-%m-%Y'), 7, 8, 2, 7, 7);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('18-04-2021', '%d-%m-%Y'), STR_TO_DATE('18-04-2021', '%d-%m-%Y'), 7, 9, 2, 8, 8);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), STR_TO_DATE('28-04-2021', '%d-%m-%Y'), 7, 10, 2, 9, 9);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('26-04-2021', '%d-%m-%Y'), STR_TO_DATE('26-04-2021', '%d-%m-%Y'), 7, 11, 2, 10, 10);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('15-04-2021', '%d-%m-%Y'), STR_TO_DATE('15-04-2021', '%d-%m-%Y'), 7, 2, 2, 1, 1);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('21-04-2021', '%d-%m-%Y'), STR_TO_DATE('21-04-2021', '%d-%m-%Y'), 7, 3, 2, 2, 2);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('02-05-2021', '%d-%m-%Y'), STR_TO_DATE('02-05-2021', '%d-%m-%Y'), 7, 4, 2, 3, 3);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('25-04-2021', '%d-%m-%Y'), STR_TO_DATE('25-04-2021', '%d-%m-%Y'), 7, 5, 2, 4, 4);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('16-04-2021', '%d-%m-%Y'), STR_TO_DATE('16-04-2021', '%d-%m-%Y'), 7, 6, 2, 5, 5);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('25-04-2021', '%d-%m-%Y'), STR_TO_DATE('25-04-2021', '%d-%m-%Y'), 7, 7, 2, 6, 6);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('08-05-2021', '%d-%m-%Y'), STR_TO_DATE('08-05-2021', '%d-%m-%Y'), 7, 8, 2, 7, 7);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('19-04-2021', '%d-%m-%Y'), STR_TO_DATE('19-04-2021', '%d-%m-%Y'), 7, 9, 2, 8, 8);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('10-05-2021', '%d-%m-%Y'), STR_TO_DATE('10-05-2021', '%d-%m-%Y'), 7, 10, 2, 9, 9);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('02-05-2021', '%d-%m-%Y'), STR_TO_DATE('02-05-2021', '%d-%m-%Y'), 7, 11, 2, 10, 10);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('09-05-2021', '%d-%m-%Y'), STR_TO_DATE('09-05-2021', '%d-%m-%Y'), 7, 2, 2, 1, 1);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), STR_TO_DATE('28-04-2021', '%d-%m-%Y'), 7, 3, 2, 2, 2);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), STR_TO_DATE('28-04-2021', '%d-%m-%Y'), 7, 4, 2, 3, 3);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('24-04-2021', '%d-%m-%Y'), STR_TO_DATE('24-04-2021', '%d-%m-%Y'), 7, 5, 2, 4, 4);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('18-04-2021', '%d-%m-%Y'), STR_TO_DATE('18-04-2021', '%d-%m-%Y'), 7, 6, 2, 5, 5);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('22-04-2021', '%d-%m-%Y'), STR_TO_DATE('22-04-2021', '%d-%m-%Y'), 7, 7, 2, 6, 6);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('30-04-2021', '%d-%m-%Y'), STR_TO_DATE('30-04-2021', '%d-%m-%Y'), 7, 8, 2, 7, 7);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('20-04-2021', '%d-%m-%Y'), STR_TO_DATE('20-04-2021', '%d-%m-%Y'), 7, 9, 2, 8, 8);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('02-05-2021', '%d-%m-%Y'), STR_TO_DATE('02-05-2021', '%d-%m-%Y'), 7, 10, 2, 9, 9);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('11-05-2021', '%d-%m-%Y'), STR_TO_DATE('11-05-2021', '%d-%m-%Y'), 7, 11, 2, 10, 10);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('25-04-2021', '%d-%m-%Y'), STR_TO_DATE('25-04-2021', '%d-%m-%Y'), 7, 2, 2, 1, 1);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('19-04-2021', '%d-%m-%Y'), STR_TO_DATE('19-04-2021', '%d-%m-%Y'), 7, 3, 2, 2, 2);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('27-04-2021', '%d-%m-%Y'), STR_TO_DATE('27-04-2021', '%d-%m-%Y'), 7, 4, 2, 3, 3);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('15-04-2021', '%d-%m-%Y'), STR_TO_DATE('15-04-2021', '%d-%m-%Y'), 7, 5, 2, 4, 4);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('27-04-2021', '%d-%m-%Y'), STR_TO_DATE('27-04-2021', '%d-%m-%Y'), 7, 6, 2, 5, 5);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('13-04-2021', '%d-%m-%Y'), STR_TO_DATE('13-04-2021', '%d-%m-%Y'), 7, 7, 2, 6, 6);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('30-04-2021', '%d-%m-%Y'), STR_TO_DATE('30-04-2021', '%d-%m-%Y'), 7, 8, 2, 7, 7);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('13-04-2021', '%d-%m-%Y'), STR_TO_DATE('13-04-2021', '%d-%m-%Y'), 7, 9, 2, 8, 8);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('15-04-2021', '%d-%m-%Y'), STR_TO_DATE('15-04-2021', '%d-%m-%Y'), 7, 10, 2, 9, 9);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('19-04-2021', '%d-%m-%Y'), STR_TO_DATE('19-04-2021', '%d-%m-%Y'), 7, 11, 2, 10, 10);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('29-04-2021', '%d-%m-%Y'), STR_TO_DATE('29-04-2021', '%d-%m-%Y'), 7, 2, 2, 1, 1);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('15-04-2021', '%d-%m-%Y'), STR_TO_DATE('15-04-2021', '%d-%m-%Y'), 7, 3, 2, 2, 2);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('05-05-2021', '%d-%m-%Y'), STR_TO_DATE('05-05-2021', '%d-%m-%Y'), 7, 4, 2, 3, 3);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('08-05-2021', '%d-%m-%Y'), STR_TO_DATE('08-05-2021', '%d-%m-%Y'), 7, 5, 2, 4, 4);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('15-04-2021', '%d-%m-%Y'), STR_TO_DATE('15-04-2021', '%d-%m-%Y'), 7, 6, 2, 5, 5);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('13-04-2021', '%d-%m-%Y'), STR_TO_DATE('13-04-2021', '%d-%m-%Y'), 7, 7, 2, 6, 6);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('15-04-2021', '%d-%m-%Y'), STR_TO_DATE('15-04-2021', '%d-%m-%Y'), 7, 8, 2, 7, 7);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('10-05-2021', '%d-%m-%Y'), STR_TO_DATE('10-05-2021', '%d-%m-%Y'), 7, 9, 2, 8, 8);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('14-04-2021', '%d-%m-%Y'), STR_TO_DATE('14-04-2021', '%d-%m-%Y'), 7, 10, 2, 9, 9);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('20-04-2021', '%d-%m-%Y'), STR_TO_DATE('20-04-2021', '%d-%m-%Y'), 7, 11, 2, 10, 10);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('04-05-2021', '%d-%m-%Y'), STR_TO_DATE('04-05-2021', '%d-%m-%Y'), 7, 2, 2, 1, 1);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('18-04-2021', '%d-%m-%Y'), STR_TO_DATE('18-04-2021', '%d-%m-%Y'), 7, 3, 2, 2, 2);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('22-04-2021', '%d-%m-%Y'), STR_TO_DATE('22-04-2021', '%d-%m-%Y'), 7, 4, 2, 3, 3);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('14-04-2021', '%d-%m-%Y'), STR_TO_DATE('14-04-2021', '%d-%m-%Y'), 7, 5, 2, 4, 4);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('09-05-2021', '%d-%m-%Y'), STR_TO_DATE('09-05-2021', '%d-%m-%Y'), 7, 6, 2, 5, 5);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('07-05-2021', '%d-%m-%Y'), STR_TO_DATE('07-05-2021', '%d-%m-%Y'), 7, 7, 2, 6, 6);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), STR_TO_DATE('12-04-2021', '%d-%m-%Y'), 7, 8, 2, 7, 7);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), STR_TO_DATE('12-04-2021', '%d-%m-%Y'), 7, 9, 2, 8, 8);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('29-04-2021', '%d-%m-%Y'), STR_TO_DATE('29-04-2021', '%d-%m-%Y'), 7, 10, 2, 9, 9);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), STR_TO_DATE('28-04-2021', '%d-%m-%Y'), 7, 11, 2, 10, 10);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), STR_TO_DATE('12-04-2021', '%d-%m-%Y'), 7, 2, 2, 1, 1);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('17-04-2021', '%d-%m-%Y'), STR_TO_DATE('17-04-2021', '%d-%m-%Y'), 7, 3, 2, 2, 2);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('25-04-2021', '%d-%m-%Y'), STR_TO_DATE('25-04-2021', '%d-%m-%Y'), 7, 4, 2, 3, 3);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('14-04-2021', '%d-%m-%Y'), STR_TO_DATE('14-04-2021', '%d-%m-%Y'), 7, 5, 2, 4, 4);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('15-04-2021', '%d-%m-%Y'), STR_TO_DATE('15-04-2021', '%d-%m-%Y'), 7, 6, 2, 5, 5);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('17-04-2021', '%d-%m-%Y'), STR_TO_DATE('17-04-2021', '%d-%m-%Y'), 7, 7, 2, 6, 6);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), STR_TO_DATE('12-04-2021', '%d-%m-%Y'), 7, 8, 2, 7, 7);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('11-05-2021', '%d-%m-%Y'), STR_TO_DATE('11-05-2021', '%d-%m-%Y'), 7, 9, 2, 8, 8);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('02-05-2021', '%d-%m-%Y'), STR_TO_DATE('02-05-2021', '%d-%m-%Y'), 7, 10, 2, 9, 9);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('09-05-2021', '%d-%m-%Y'), STR_TO_DATE('09-05-2021', '%d-%m-%Y'), 7, 11, 2, 10, 10);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('07-05-2021', '%d-%m-%Y'), STR_TO_DATE('07-05-2021', '%d-%m-%Y'), 7, 2, 2, 1, 1);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), STR_TO_DATE('12-04-2021', '%d-%m-%Y'), 7, 3, 2, 2, 2);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), STR_TO_DATE('12-04-2021', '%d-%m-%Y'), 7, 4, 2, 3, 3);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('29-04-2021', '%d-%m-%Y'), STR_TO_DATE('29-04-2021', '%d-%m-%Y'), 7, 5, 2, 4, 4);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), STR_TO_DATE('28-04-2021', '%d-%m-%Y'), 7, 6, 2, 5, 5);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), STR_TO_DATE('12-04-2021', '%d-%m-%Y'), 7, 7, 2, 6, 6);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('17-04-2021', '%d-%m-%Y'), STR_TO_DATE('17-04-2021', '%d-%m-%Y'), 7, 8, 2, 7, 7);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('25-04-2021', '%d-%m-%Y'), STR_TO_DATE('25-04-2021', '%d-%m-%Y'), 7, 9, 2, 8, 8);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('14-04-2021', '%d-%m-%Y'), STR_TO_DATE('14-04-2021', '%d-%m-%Y'), 7, 10, 2, 9, 9);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('15-04-2021', '%d-%m-%Y'), STR_TO_DATE('15-04-2021', '%d-%m-%Y'), 7, 11, 2, 10, 10);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('17-04-2021', '%d-%m-%Y'), STR_TO_DATE('17-04-2021', '%d-%m-%Y'), 7, 2, 2, 1, 1);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), STR_TO_DATE('12-04-2021', '%d-%m-%Y'), 7, 3, 2, 2, 2);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('11-05-2021', '%d-%m-%Y'), STR_TO_DATE('11-05-2021', '%d-%m-%Y'), 7, 4, 2, 3, 3);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('02-05-2021', '%d-%m-%Y'), STR_TO_DATE('02-05-2021', '%d-%m-%Y'), 7, 5, 2, 4, 4);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('09-05-2021', '%d-%m-%Y'), STR_TO_DATE('09-05-2021', '%d-%m-%Y'), 7, 6, 2, 5, 5);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('07-05-2021', '%d-%m-%Y'), STR_TO_DATE('07-05-2021', '%d-%m-%Y'), 7, 7, 2, 6, 6);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), STR_TO_DATE('12-04-2021', '%d-%m-%Y'), 7, 8, 2, 7, 7);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), STR_TO_DATE('12-04-2021', '%d-%m-%Y'), 7, 9, 2, 8, 8);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('29-04-2021', '%d-%m-%Y'), STR_TO_DATE('29-04-2021', '%d-%m-%Y'), 7, 10, 2, 9, 9);
INSERT INTO COMPRA (FECHA_COMPRA, FECHA_ENTREGA, ID_ESTADO, ID_USUARIO, ID_TIPO_ENTREGA, ID_DIRECCION, ID_TARJETA) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), STR_TO_DATE('28-04-2021', '%d-%m-%Y'), 7, 11, 2, 10, 10);

-- DETALLE_COMPRA
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (1, 54, 1);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (2, 57, 2);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (3, 15, 1);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (4, 33, 2);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (5, 6, 3);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (6, 16, 4);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (7, 52, 5);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (8, 41, 3);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (9, 34, 4);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (10, 29, 1);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (11, 35, 2);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (12, 53, 1);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (13, 44, 2);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (14, 32, 3);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (15, 46, 4);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (16, 28, 5);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (17, 51, 3);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (18, 47, 4);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (19, 17, 5);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (20, 18, 5);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (21, 55, 1);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (22, 8, 2);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (23, 3, 1);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (24, 22, 2);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (25, 19, 3);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (27, 7, 5);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (28, 56, 3);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (29, 58, 4);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (30, 59, 1);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (31, 11, 2);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (32, 1, 1);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (33, 20, 2);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (34, 2, 3);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (35, 4, 4);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (36, 5, 5);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (37, 24, 3);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (38, 14, 4);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (39, 13, 5);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (40, 9, 5);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (41, 48, 1);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (42, 38, 2);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (43, 49, 1);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (44, 10, 2);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (45, 50, 3);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (46, 36, 4);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (47, 12, 5);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (48, 39, 3);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (49, 21, 4);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (50, 23, 1);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (51, 25, 2);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (52, 26, 1);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (53, 27, 2);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (54, 30, 3);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (55, 45, 4);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (56, 31, 5);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (57, 37, 3);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (58, 40, 4);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (59, 43, 5);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (60, 42, 5);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (61, 30, 1);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (62, 26, 2);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (63, 39, 1);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (64, 58, 2);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (65, 18, 3);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (66, 43, 4);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (67, 3, 5);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (68, 35, 3);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (69, 34, 4);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (70, 25, 1);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (71, 5, 2);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (72, 59, 1);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (73, 27, 2);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (74, 28, 3);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (75, 46, 4);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (77, 36, 3);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (78, 1, 4);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (79, 2, 5);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (80, 4, 5);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (81, 55, 1);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (82, 33, 2);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (83, 45, 1);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (84, 7, 2);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (85, 19, 3);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (86, 6, 4);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (87, 22, 5);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (88, 13, 3);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (89, 57, 4);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (90, 20, 1);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (91, 56, 2);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (92, 14, 1);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (93, 41, 2);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (94, 52, 3);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (95, 8, 4);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (96, 24, 5);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (97, 47, 3);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (98, 37, 4);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (99, 9, 5);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (100, 11, 5);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (101, 38, 1);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (102, 21, 2);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (103, 10, 1);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (104, 29, 2);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (105, 31, 3);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (106, 32, 4);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (107, 48, 5);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (108, 44, 3);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (109, 15, 4);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (110, 16, 1);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (111, 53, 2);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (112, 49, 1);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (113, 40, 2);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (114, 42, 3);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (115, 23, 4);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (116, 50, 5);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (117, 51, 3);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (118, 12, 4);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (119, 54, 5);
INSERT INTO DETALLE_COMPRA (ID_COMPRA, ID_LIBRO, CANTIDAD) VALUES (120, 17, 5);

-- COMENTARIO
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('20-04-2021', '%d-%m-%Y'), 'Bien', 3, 3, 0, 54, 2);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), 'Genial', 5, 3, 0, 57, 3);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), 'Me gustó mucho', 4, 3, 0, 15, 4);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('13-04-2021', '%d-%m-%Y'), 'Una decepción', 2, 3, 0, 33, 5);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('01-05-2021', '%d-%m-%Y'), 'Horrible', 1, 3, 0, 6, 6);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('11-05-2021', '%d-%m-%Y'), '', 5, 3, 1, 16, 7);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('29-04-2021', '%d-%m-%Y'), '', 3, 3, 1, 52, 8);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('19-04-2021', '%d-%m-%Y'), '', 4, 3, 1, 41, 9);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('11-05-2021', '%d-%m-%Y'), 'Bien', 3, 3, 1, 34, 10);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('10-05-2021', '%d-%m-%Y'), 'Genial', 5, 3, 1, 29, 11);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('11-05-2021', '%d-%m-%Y'), 'Me gustó mucho', 4, 1, 0, 35, 2);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('02-05-2021', '%d-%m-%Y'), 'Una decepción', 2, 2, 1, 53, 3);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('10-05-2021', '%d-%m-%Y'), 'Horrible', 1, 2, 1, 44, 4);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('11-05-2021', '%d-%m-%Y'), '', 5, 3, 1, 32, 5);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('18-04-2021', '%d-%m-%Y'), '', 3, 3, 1, 46, 6);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('26-04-2021', '%d-%m-%Y'), '', 4, 3, 0, 28, 7);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('18-04-2021', '%d-%m-%Y'), 'Bien', 3, 3, 0, 51, 8);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('11-05-2021', '%d-%m-%Y'), 'Genial', 5, 3, 0, 47, 9);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('18-04-2021', '%d-%m-%Y'), 'Me gustó mucho', 4, 3, 0, 17, 10);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('19-04-2021', '%d-%m-%Y'), 'Una decepción', 2, 3, 0, 18, 11);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), 'Horrible', 1, 3, 0, 55, 2);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('21-04-2021', '%d-%m-%Y'), '', 5, 3, 1, 8, 3);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('04-05-2021', '%d-%m-%Y'), '', 3, 3, 1, 3, 4);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('05-05-2021', '%d-%m-%Y'), '', 4, 1, 1, 22, 5);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('09-05-2021', '%d-%m-%Y'), 'Bien', 3, 2, 1, 19, 6);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('06-05-2021', '%d-%m-%Y'), 'Me gustó mucho', 4, 3, 0, 7, 8);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('10-05-2021', '%d-%m-%Y'), 'Una decepción', 2, 3, 1, 56, 9);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('13-04-2021', '%d-%m-%Y'), 'Horrible', 1, 3, 1, 58, 10);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('10-05-2021', '%d-%m-%Y'), '', 5, 3, 1, 59, 11);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), '', 3, 3, 1, 11, 2);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('29-04-2021', '%d-%m-%Y'), '', 4, 3, 0, 1, 3);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('20-04-2021', '%d-%m-%Y'), 'Bien', 3, 3, 0, 20, 4);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('10-05-2021', '%d-%m-%Y'), 'Genial', 5, 3, 0, 2, 5);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('09-05-2021', '%d-%m-%Y'), 'Me gustó mucho', 4, 3, 0, 4, 6);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('05-05-2021', '%d-%m-%Y'), 'Una decepción', 2, 3, 0, 5, 7);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), 'Horrible', 1, 1, 0, 24, 8);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('18-04-2021', '%d-%m-%Y'), '', 5, 2, 1, 14, 9);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), '', 3, 2, 1, 13, 10);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('26-04-2021', '%d-%m-%Y'), '', 4, 3, 1, 9, 11);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('15-04-2021', '%d-%m-%Y'), 'Bien', 3, 3, 1, 48, 2);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('21-04-2021', '%d-%m-%Y'), 'Genial', 5, 3, 1, 38, 3);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('02-05-2021', '%d-%m-%Y'), 'Me gustó mucho', 4, 3, 0, 49, 4);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('25-04-2021', '%d-%m-%Y'), 'Una decepción', 2, 3, 1, 10, 5);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('16-04-2021', '%d-%m-%Y'), 'Horrible', 1, 3, 1, 50, 6);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('25-04-2021', '%d-%m-%Y'), '', 5, 3, 1, 36, 7);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('08-05-2021', '%d-%m-%Y'), '', 3, 3, 1, 12, 8);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('19-04-2021', '%d-%m-%Y'), '', 4, 3, 0, 39, 9);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('10-05-2021', '%d-%m-%Y'), 'Bien', 3, 3, 0, 21, 10);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('02-05-2021', '%d-%m-%Y'), 'Genial', 5, 1, 0, 23, 11);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('09-05-2021', '%d-%m-%Y'), 'Me gustó mucho', 4, 2, 0, 25, 2);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), 'Una decepción', 2, 2, 0, 26, 3);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), 'Horrible', 1, 3, 0, 27, 4);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('24-04-2021', '%d-%m-%Y'), '', 5, 3, 1, 30, 5);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('18-04-2021', '%d-%m-%Y'), '', 3, 3, 1, 45, 6);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('22-04-2021', '%d-%m-%Y'), '', 4, 3, 1, 31, 7);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('30-04-2021', '%d-%m-%Y'), 'Bien', 3, 3, 1, 37, 8);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('20-04-2021', '%d-%m-%Y'), 'Genial', 5, 3, 1, 40, 9);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('02-05-2021', '%d-%m-%Y'), 'Me gustó mucho', 4, 3, 0, 43, 10);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('11-05-2021', '%d-%m-%Y'), 'Una decepción', 2, 3, 1, 42, 11);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('25-04-2021', '%d-%m-%Y'), 'Horrible', 1, 3, 1, 30, 2);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('27-04-2021', '%d-%m-%Y'), '', 3, 1, 1, 39, 4);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('15-04-2021', '%d-%m-%Y'), '', 4, 2, 0, 58, 5);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('27-04-2021', '%d-%m-%Y'), 'Bien', 3, 2, 0, 18, 6);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('13-04-2021', '%d-%m-%Y'), 'Genial', 5, 3, 0, 43, 7);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('30-04-2021', '%d-%m-%Y'), 'Me gustó mucho', 4, 3, 0, 3, 8);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('13-04-2021', '%d-%m-%Y'), 'Una decepción', 2, 3, 0, 35, 9);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('08-05-2021', '%d-%m-%Y'), 'Genial', 5, 3, 1, 28, 5);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('15-04-2021', '%d-%m-%Y'), 'Horrible', 1, 2, 1, 36, 8);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('10-05-2021', '%d-%m-%Y'), '', 5, 2, 1, 1, 9);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('14-04-2021', '%d-%m-%Y'), '', 3, 3, 1, 2, 10);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('20-04-2021', '%d-%m-%Y'), '', 4, 3, 0, 4, 11);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('18-04-2021', '%d-%m-%Y'), 'Genial', 5, 3, 0, 33, 3);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('22-04-2021', '%d-%m-%Y'), 'Me gustó mucho', 4, 3, 0, 45, 4);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('14-04-2021', '%d-%m-%Y'), 'Una decepción', 2, 3, 0, 7, 5);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('07-05-2021', '%d-%m-%Y'), '', 5, 3, 1, 6, 7);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), '', 3, 3, 1, 22, 8);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), '', 4, 3, 1, 13, 9);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('29-04-2021', '%d-%m-%Y'), 'Bien', 3, 1, 1, 57, 10);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), 'Genial', 5, 2, 1, 20, 11);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), 'Me gustó mucho', 4, 2, 0, 56, 2);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('17-04-2021', '%d-%m-%Y'), 'Una decepción', 2, 3, 1, 14, 3);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('25-04-2021', '%d-%m-%Y'), 'Horrible', 1, 3, 1, 41, 4);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('14-04-2021', '%d-%m-%Y'), '', 5, 3, 1, 52, 5);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('15-04-2021', '%d-%m-%Y'), '', 3, 3, 1, 8, 6);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('17-04-2021', '%d-%m-%Y'), '', 4, 3, 0, 24, 7);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), 'Bien', 3, 3, 0, 47, 8);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('11-05-2021', '%d-%m-%Y'), 'Genial', 5, 3, 0, 37, 9);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('02-05-2021', '%d-%m-%Y'), 'Me gustó mucho', 4, 3, 0, 9, 10);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('09-05-2021', '%d-%m-%Y'), 'Una decepción', 2, 3, 0, 11, 11);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('07-05-2021', '%d-%m-%Y'), 'Horrible', 1, 3, 0, 38, 2);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), '', 5, 1, 1, 21, 3);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), '', 3, 2, 1, 10, 4);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('29-04-2021', '%d-%m-%Y'), '', 4, 2, 1, 29, 5);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), 'Bien', 3, 3, 1, 31, 6);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), 'Genial', 5, 3, 1, 32, 7);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('17-04-2021', '%d-%m-%Y'), 'Me gustó mucho', 4, 3, 0, 48, 8);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('25-04-2021', '%d-%m-%Y'), 'Una decepción', 2, 3, 1, 44, 9);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('14-04-2021', '%d-%m-%Y'), 'Horrible', 1, 3, 1, 15, 10);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('15-04-2021', '%d-%m-%Y'), '', 5, 3, 1, 16, 11);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('17-04-2021', '%d-%m-%Y'), '', 3, 3, 1, 53, 2);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), '', 4, 3, 0, 49, 3);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('11-05-2021', '%d-%m-%Y'), 'Bien', 3, 3, 0, 40, 4);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('02-05-2021', '%d-%m-%Y'), 'Genial', 5, 3, 0, 42, 5);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('09-05-2021', '%d-%m-%Y'), 'Me gustó mucho', 4, 1, 0, 23, 6);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('07-05-2021', '%d-%m-%Y'), 'Una decepción', 2, 2, 0, 50, 7);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), '', 5, 3, 1, 12, 9);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('29-04-2021', '%d-%m-%Y'), '', 3, 3, 1, 54, 10);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), '', 4, 3, 1, 17, 11);
