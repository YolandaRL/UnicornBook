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
INSERT INTO USUARIO (USUARIO, PASSWORD, EMAIL, DNI, NOMBRE, APELLIDO1, APELLIDO2, TELEFONO1, TELEFONO2, FECHA_NACIMIENTO, ACTIVO) VALUES ('bego??a_61', '$2a$10$ZC3t212GhY4EK9PAJV4lB.IImYxl4LIl.yAKsh0gqGezHNrATdpw.', 'idl6w5ah1@caramail.com', '40487227M', 'Bego??a', 'Murillo', 'Navarrete', 709426857, 612316847, STR_TO_DATE('2-3-1961', '%d-%m-%Y'), 1);
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
INSERT INTO DIRECCION (NOMBRE_PERSONALIZADO, NOMBRE_RECEPTOR, APELLIDO1_RECEPTOR, APELLIDO2_RECEPTOR, DIRECCION, CODIGO_POSTAL, POBLACION, PROVINCIA, PAIS, ID_USUARIO) VALUES ('Principal', 'Paula', 'Pizarro', 'Sancho', 'Estrada Real, 66', 17195, 'Rab??s', 'Girona', 'Espa??a', 2);
INSERT INTO DIRECCION (NOMBRE_PERSONALIZADO, NOMBRE_RECEPTOR, APELLIDO1_RECEPTOR, APELLIDO2_RECEPTOR, DIRECCION, CODIGO_POSTAL, POBLACION, PROVINCIA, PAIS, ID_USUARIO) VALUES ('Principal', 'Mariana', 'Sosa', 'Casado', 'Campo Catalunya, 86', 31084, 'Castej??n', 'Navarra', 'Espa??a', 3);
INSERT INTO DIRECCION (NOMBRE_PERSONALIZADO, NOMBRE_RECEPTOR, APELLIDO1_RECEPTOR, APELLIDO2_RECEPTOR, DIRECCION, CODIGO_POSTAL, POBLACION, PROVINCIA, PAIS, ID_USUARIO) VALUES ('Principal', 'Ernesto', 'Aviles', 'Serna', 'Pla??a Nueva, 28', 21735, 'Moguer', 'Huelva', 'Espa??a', 4);
INSERT INTO DIRECCION (NOMBRE_PERSONALIZADO, NOMBRE_RECEPTOR, APELLIDO1_RECEPTOR, APELLIDO2_RECEPTOR, DIRECCION, CODIGO_POSTAL, POBLACION, PROVINCIA, PAIS, ID_USUARIO) VALUES ('Principal', 'Youssef', 'Zamora', 'Polo', 'Passatge Madrid, 40', 17270, 'Arb??cies', 'Girona', 'Espa??a', 5);
INSERT INTO DIRECCION (NOMBRE_PERSONALIZADO, NOMBRE_RECEPTOR, APELLIDO1_RECEPTOR, APELLIDO2_RECEPTOR, DIRECCION, CODIGO_POSTAL, POBLACION, PROVINCIA, PAIS, ID_USUARIO) VALUES ('Principal', 'Juan Carlos', 'Marques', 'Bonet', 'Pol??gono Iglesia, 80', 43650, 'Gandesa', 'Tarragona', 'Espa??a', 6);
INSERT INTO DIRECCION (NOMBRE_PERSONALIZADO, NOMBRE_RECEPTOR, APELLIDO1_RECEPTOR, APELLIDO2_RECEPTOR, DIRECCION, CODIGO_POSTAL, POBLACION, PROVINCIA, PAIS, ID_USUARIO) VALUES ('Principal', 'Maria Julia', 'Romera', 'Carretero', 'Carrer Iglesia, 68', 44106, 'Griegos', 'Teruel', 'Espa??a', 7);
INSERT INTO DIRECCION (NOMBRE_PERSONALIZADO, NOMBRE_RECEPTOR, APELLIDO1_RECEPTOR, APELLIDO2_RECEPTOR, DIRECCION, CODIGO_POSTAL, POBLACION, PROVINCIA, PAIS, ID_USUARIO) VALUES ('Principal', 'Fernando', 'Alcala', 'Caro', 'Paseo Mayor, 61', 19816, 'Tierzo', 'Guadalajara', 'Espa??a', 8);
INSERT INTO DIRECCION (NOMBRE_PERSONALIZADO, NOMBRE_RECEPTOR, APELLIDO1_RECEPTOR, APELLIDO2_RECEPTOR, DIRECCION, CODIGO_POSTAL, POBLACION, PROVINCIA, PAIS, ID_USUARIO) VALUES ('Principal', 'Bego??a', 'Murillo', 'Navarrete', 'Praza Horno, 53', 50378, 'Aguil??n', 'Zaragoza', 'Espa??a', 9);
INSERT INTO DIRECCION (NOMBRE_PERSONALIZADO, NOMBRE_RECEPTOR, APELLIDO1_RECEPTOR, APELLIDO2_RECEPTOR, DIRECCION, CODIGO_POSTAL, POBLACION, PROVINCIA, PAIS, ID_USUARIO) VALUES ('Principal', 'Elia', 'Guzman', 'Rueda', 'Sector Horno, 34', 46711, 'Miramar', 'Valencia', 'Espa??a', 10);
INSERT INTO DIRECCION (NOMBRE_PERSONALIZADO, NOMBRE_RECEPTOR, APELLIDO1_RECEPTOR, APELLIDO2_RECEPTOR, DIRECCION, CODIGO_POSTAL, POBLACION, PROVINCIA, PAIS, ID_USUARIO) VALUES ('Principal', 'Pablo', 'Caceres', 'Arroyo', 'VIA IGLESIA, 34', 19289, 'VALDECONCHA', 'GUADALAJARA', 'Espa??a', 11);

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
        'Edici??n de libros de texto de fondo general.');
INSERT INTO EDITORIAL (NOMBRE, DIRECCION, PROVINCIA, CCAA, TELEFONO1, TELEFONO2, ENLACE_WEB, DESCRIPCION)
VALUES ('ACEN', 'Avenida Montereal, 6', 'Pontevedra', 'Pontevedra', 795148020, null, 'www.acen.es',
        'Edici??n de libros de todo tipo.');
INSERT INTO EDITORIAL (NOMBRE, DIRECCION, PROVINCIA, CCAA, TELEFONO1, TELEFONO2, ENLACE_WEB, DESCRIPCION)
VALUES ('Alianza', 'Calle juan Ignacio luca de tena, 15', 'Madrid', 'Madrid', 913938888, 913938800,
        'www.alianzaeditorial.es', 'Edici??n de libros de todo tipo.');
INSERT INTO EDITORIAL (NOMBRE, DIRECCION, PROVINCIA, CCAA, TELEFONO1, TELEFONO2, ENLACE_WEB, DESCRIPCION)
VALUES ('Alfaguara', 'Calle Isabel II, 8', 'Sevilla', 'Sevilla', null, null, 'www.alfaguara.es',
        'Edici??n de libros de texto de fondo general.');
INSERT INTO EDITORIAL (NOMBRE, DIRECCION, PROVINCIA, CCAA, TELEFONO1, TELEFONO2, ENLACE_WEB, DESCRIPCION)
VALUES ('??ltera Ediciones', 'R??a Buenos Airea, 66', 'A Coru??a', 'A Coru??a', null, null, 'www.altera-ediciones.es',
        'Edici??n de libros de todo tipo.');
INSERT INTO EDITORIAL (NOMBRE, DIRECCION, PROVINCIA, CCAA, TELEFONO1, TELEFONO2, ENLACE_WEB, DESCRIPCION)
VALUES ('Ediciones Alfar', 'Calle Aranjuez, 1', 'Madrid', 'Madrid', null, null, 'www.ediciones-alfar.es',
        'Edici??n de libros de texto de fondo general.');

-- AUTOR
INSERT INTO AUTOR (NOMBRE, APELLIDO1, APELLIDO2, BIOGRAFIA, LINK_FOTO)
VALUES ('Arturo P??rez Reverte', '', '',
        'Arturo P??rez-Reverte Guti??rrez es un escritor y periodista espa??ol, miembro de la Real Academia Espa??ola desde 2003. Antiguo corresponsal de RTVE y reportero destacado en diversos conflictos armados y guerras, es el autor, entre otras, de la saga Las aventuras del capit??n Alatriste y la trilog??a de Falc??.',
        'https://image.flaticon.com/icons/png/512/21/21104.png');
INSERT INTO AUTOR (NOMBRE, APELLIDO1, APELLIDO2, BIOGRAFIA, LINK_FOTO)
VALUES ('Mar??a Due??as', '', '',
        'Mar??a Due??as Vinuesa es una escritora espa??ola. Salt?? a la fama en 2009 con El tiempo entre costuras, su primera novela, que se convirti?? en una de las obras m??s vendidas de la literatura espa??ola en los ??ltimos a??os y ha sido traducida a m??s de veinticinco idiomas.???',
        'https://image.flaticon.com/icons/png/512/21/21104.png');
INSERT INTO AUTOR (NOMBRE, APELLIDO1, APELLIDO2, BIOGRAFIA, LINK_FOTO)
VALUES ('Almudena Grandes', '', '',
        'Almudena Grandes Hern??ndez es una escritora espa??ola, columnista habitual del diario El Pa??s, y contertulia en la secci??n Hoy por hoy de Cadena SER.',
        'https://image.flaticon.com/icons/png/512/21/21104.png');
INSERT INTO AUTOR (NOMBRE, APELLIDO1, APELLIDO2, BIOGRAFIA, LINK_FOTO)
VALUES ('Javier Castillo', '', '', 'Javier Castillo es un escritor espa??ol.',
        'https://image.flaticon.com/icons/png/512/21/21104.png');
INSERT INTO AUTOR (NOMBRE, APELLIDO1, APELLIDO2, BIOGRAFIA, LINK_FOTO)
VALUES ('Mario Vargas LLosa', '', '',
        'Jorge Mario Pedro Vargas Llosa, i marqu??s de Vargas Llosa, ?????? conocido como Mario Vargas Llosa, es un escritor peruano que cuenta tambi??n con la nacionalidad espa??ola desde 1993.',
        'https://image.flaticon.com/icons/png/512/21/21104.png');
INSERT INTO AUTOR (NOMBRE, APELLIDO1, APELLIDO2, BIOGRAFIA, LINK_FOTO)
VALUES ('Javier Sierra', '', '',
        'Javier Sierra Albert es un escritor y periodista espa??ol. Premio Planeta de novela 2017 por El fuego invisible, es el ??nico escritor espa??ol en el Top Ten de la lista de los m??s vendidos de Estados Unidos, elaborada por The New York Times. Lo consigui?? en abril de 2006???con La cena secreta, alcanzando el n??mero 6.',
        'https://image.flaticon.com/icons/png/512/21/21104.png');
INSERT INTO AUTOR (NOMBRE, APELLIDO1, APELLIDO2, BIOGRAFIA, LINK_FOTO)
VALUES ('An??nimo', '', '', '', 'https://image.flaticon.com/icons/png/512/21/21104.png');

-- TEMATICA
INSERT INTO TEMATICA (NOMBRE, DESCRIPCION)
VALUES ('Terror', 'Terror');
INSERT INTO TEMATICA (NOMBRE, DESCRIPCION)
VALUES ('Comedia', 'Comedia');
INSERT INTO TEMATICA (NOMBRE, DESCRIPCION)
VALUES ('Suspense', 'Suspense');
INSERT INTO TEMATICA (NOMBRE, DESCRIPCION)
VALUES ('Ciencia ficci??n', 'Ciencia ficci??n');
INSERT INTO TEMATICA (NOMBRE, DESCRIPCION) VALUES ('Infantil', 'Infantil');
INSERT INTO TEMATICA (NOMBRE, DESCRIPCION) VALUES ('Acci??n', 'Acci??n');
INSERT INTO TEMATICA (NOMBRE, DESCRIPCION) VALUES ('Aventuras', 'Aventuras');

-- COLECCION
INSERT INTO COLECCION (NOMBRE, DESCRIPCION) VALUES ('Narrativa', 'Narrativa');
INSERT INTO COLECCION (NOMBRE, DESCRIPCION) VALUES ('Filosof??a', 'Filosof??a');
INSERT INTO COLECCION (NOMBRE, DESCRIPCION) VALUES ('Entretenimiento', 'Entretenimiento');
INSERT INTO COLECCION (NOMBRE, DESCRIPCION) VALUES ('Libro de bolsillo', 'Libro de bolsillo');
INSERT INTO COLECCION (NOMBRE, DESCRIPCION) VALUES ('Literatura', 'Literatura');

-- LIBRO
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-24066-2', 'El campamento', '', 'Todos se mueren por entrar, pero morir??n si no consiguen salir. Diez de los chicos m??s prometedores del pa??s, menores de 23 a??os, han sido invitados a un campamento muy especial en los Pirineos. El precursor de esta idea es Fernando Godoy, uno de los hombres m??s ricos de Espa??a, que busca a alguien joven que le ayude a dar una nueva imagen a su imperio y que en el futuro ocupe su lugar. En aquel id??lico paraje, recibir??n formaci??n y ser??n preparados para convertirse en la mano derecha del millonario. Pero solo uno podr?? conseguirlo. Una bestseller de novela juvenil, una atrevida instagramer, un cantante pop de moda, un exitoso atleta, un estudiante de criminolog??a brillante, una influencer con marca propia, la creadora de una app para frikis, uno de los gamers del momento, un chico que promulga la palabra de Dios de una manera peculiar y una conocida actriz son los candidatos finales. Solo tendr??n un h??ndicap para estar all??: nada de m??viles ni comunicaci??n con el exterior. Las cosas marchan seg??n lo previsto y los j??venes disfrutan de aquella experiencia hasta que en el segundo viernes de convivencia los coordinadores del grupo desaparecen y uno de los chicos muere en extra??as circunstancias. A partir de ese instante todo cambiar?? y los acontecimientos inesperados se ir??n sucediendo. Tras el ??xito de La chica invisible, Blue Jeans vuelve a sorprender a sus lectores con un apasionante thriller repleto de intriga y acci??n.', 280, 'Papel', STR_TO_DATE('10-08-2021', '%d-%m-%Y'), STR_TO_DATE('30-06-2020', '%d-%m-%Y'), STR_TO_DATE('26-03-2020', '%d-%m-%Y'), 1, 'Castellano', 1, 6, 'https://static.cegal.es/imagenes/marcadas/9788408/978840824066.gif', 1);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-23551-4', 'Aquitania', 'Premio Planeta 2020', '1137. El duque de Aquitania ???la regi??n m??s codiciada de Francia??? aparece muerto en Compostela. El cuerpo queda de color azul y con la marca del ????guila de sangre??, una ancestral tortura normanda. Su hija Eleanor decide vengarse y para ello se casa con el hijo del que cree su asesino: Luy VI el Gordo, rey de Francia.Pero el propio rey muere durante la boda en id??nticas circunstancias. Eleanor y Luy VII intentar??n averiguar, junto con los gatos aquitanos ???los ??picos esp??as de los duques???, qui??n quiere a los inexpertos reyes en el trono.D??cadas antes de la muerte del duque de Aquitania, un ni??o sin nombre es abandonado en un bosque por sus cinco madres. Acaso un monstruo, o tal vez un santo, el peque??o superviviente acabar?? convirti??ndose en uno de los hombres m??s excepcionales del medievo europeo. Un cautivador thriller hist??rico que atraviesa un siglo repleto de venganzas, incestos y batallas. Un turbador misterio en torno a tres vidas que forjar??n lo que m??s tarde se llamar?? Europa. Vuelve la autora de la exitosa Trilog??a de la Ciudad Blanca (El silencio de la ciudad blanca, Los ritos del agua, Los se??ores del tiempo).', 396, 'Papel', STR_TO_DATE('09-11-2021', '%d-%m-%Y'), STR_TO_DATE('28-11-2019', '%d-%m-%Y'), STR_TO_DATE('23-04-2021', '%d-%m-%Y'), 1, 'Castellano', 8, 85, 'https://static.cegal.es/imagenes/marcadas/9788408/978840823551.gif', 2);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-23500-2', 'La Ciudad de Vapor', '', 'Carlos Ruiz Zaf??n concibi?? est?? obra como un reconocimiento a sus lectores, que le hab??an seguido a lo largo de la saga iniciada con???La Sombra del Viento.   ??Puedo conjurar rostros de chiquillos del barrio de la Ribera con los que a veces jugaba o peleaba en la calle, pero ninguno que quisiera rescatar del pa??s de la indiferencia. Ninguno excepto el de Blanca.?? Un muchacho decide hacerse escritor al descubrir que sus invenciones le regalan un rato m??s de inter??s por parte de la ni??a rica que le ha robado el coraz??n. Un arquitecto huye de Constantinopla con los planos de una biblioteca inexpugnable. Un extra??o caballero tienta a Cervantes para que escriba un libro como no ha existido jam??s. Y Gaud??, navegando hacia una misteriosa cita en Nueva York, se deleita con la luz y el vapor, la materia de la que deber??an estar hechas las ciudades. El eco de los grandes personajes y motivos de las novelas de El Cementerio de los Libros Olvidados resuena en los cuentos de Carlos Ruiz Zaf??n ???reunidos por primera vez, y algunos de ellos in??ditos??? en los que prende la magia del narrador que nos hizo so??ar como nadie.', 296, 'Papel', STR_TO_DATE('11-10-2019', '%d-%m-%Y'), STR_TO_DATE('09-01-2021', '%d-%m-%Y'), STR_TO_DATE('07-09-2020', '%d-%m-%Y'), 1, 'Castellano', 0, 53, 'https://static.cegal.es/imagenes/marcadas/9788408/978840823500.gif', 3);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-23552-1', 'Un oc??ano para llegar a ti', 'Finalista Premio Planeta 2020', 'Una novela tierna y atrevida sobre los secretos familiares y las emociones silenciadas. Tras la muerte de su madre, Gabriele vuelve al pueblo de los veranos de su infancia. All?? le espera su padre, con el que no habla desde hace a??os. Juntos se disponen a cumplir el ??ltimo deseo de Greta: que las tres personas m??s importantes de su vida ???su marido, su ??nica hija y su cu??ada??? esparzan sus cenizas en un lugar donde fueron felices. Los secretos que Greta desvela en las cartas que deja a su familia terminar??n con el silencio entre padre e hija y, como en un domin??, alterar??n la vida de todos y propiciar??n un encuentro inesperado que har?? que Gabriele descubra que en la vulnerabilidad se halla la magia de la vida.??Y si el destino de las personas tendiera un hilo invisible que las conecta con aquellos que deben encontrar? ??Y si la vida solo fuera un viaje para encontrarlos?', 193, 'Papel', STR_TO_DATE('25-06-2020', '%d-%m-%Y'), STR_TO_DATE('14-07-2021', '%d-%m-%Y'), STR_TO_DATE('05-06-2019', '%d-%m-%Y'), 1, 'Castellano', 20, 90, 'https://static.cegal.es/imagenes/marcadas/9788408/978840823552.gif', 4);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-22469-3', 'Y Julia ret?? a los dioses', 'Cuando el enemigo es tu propio hijo..., ??existe la victoria?', 'Mantenerse en lo alto es mucho m??s dif??cil que llegar. Julia est?? en la c??spide de su poder, pero la traici??n y la divisi??n familiar amenazan con echarlo todo a perder. Para colmo de males, el m??dico Galeno diagnostica que la emperatriz padece lo que ??l, en griego, llama karkinos, y que los romanos, en lat??n, denominan c??ncer. El enfrentamiento brutal entre sus dos hijos aboca la dinast??a de Julia al colapso. En medio del dolor f??sico y moral que padece la augusta, cualquiera se hubiera rendido. Se acumulan tantos desastres que Julia siente que es como si luchara contra los dioses de Roma. Pero, en medio del caos, una historia de amor m??s fuerte que la muerte, una pasi??n capaz de superar pruebas imposibles emerge al rescate de Julia. Nada est?? perdido. La partida por el control del imperio contin??a. JULIA DOMNA, la nueva saga del autor que ha conquistado a m??s de 4 millones de lectores.', 40, 'Papel', STR_TO_DATE('21-11-2020', '%d-%m-%Y'), STR_TO_DATE('22-10-2020', '%d-%m-%Y'), STR_TO_DATE('13-08-2021', '%d-%m-%Y'), 1, 'Castellano', 4, 98, 'https://static.cegal.es/imagenes/marcadas/9788408/978840822469.gif', 5);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-23910-9', 'Cocina de resistencia', 'Las mejores recetas para no desperdiciar nada', 'Este libro es mucho m??s que un simple cat??logo de recetas. Alberto Chicote, uno de los chefs m??s exitosos y medi??ticos del momento, nos invita a disfrutar de la cocina recordando las emociones que le han inspirado estos platos a lo largo de su vida. Con ingredientes sencillos, con lo que tengas a mano en la nevera, con el prop??sito de sacarle partido a todo y que nada acabe en la basura. Porque cocinar no solo es necesario para alimentarnos, es algo que nos hace felices. Las recetas son la gu??a, as?? que an??mate a probarlas, a explorar y a hacerlas tuyas. Cocina, conserva, reutiliza, ??inventa! Esa es la esencia de la #CocinaDeResistencia. Recuerda: en casa??? ??no se tira nada! ??Alberto es entusiasta y chispeante, posee un carisma que te envuelve, algo que sin duda transmite en su cocina??, Susi D??az ??Cocina de resistencia nos recuerda varios dogmas culinarios que nunca debemos olvidar: disfrutar cocinando, maridando cada receta con nuestros recuerdos m??s entra??ables, y gozar degustando??, Paco Roncero ??No pod??a haber mejor t??tulo para estas p??ginas de recetas que nos ayudan a, d??a a d??a, realizar desde casa una cocina sana, sencilla y ordenada??, Paco Torreblanca ??Mucho m??s que un libro de recetas! Organiza tu despensa, prepara tu men?? y aprende a aprovechar hasta el ??ltimo ingrediente de tu cocina.', 395, 'Papel', STR_TO_DATE('12-06-2020', '%d-%m-%Y'), STR_TO_DATE('29-11-2021', '%d-%m-%Y'), STR_TO_DATE('06-05-2019', '%d-%m-%Y'), 1, 'Castellano', 2, 95, 'https://static.cegal.es/imagenes/marcadas/9788408/978840823910.gif', 6);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-24071-6', 'Una mujer en la garganta', '', 'Un libro que es una reivindicaci??n de los amores pasionales y de la belleza, pero tambi??n una autorreivindicaci??n po??tica, mundo en el que Marw??n se siente un ap??trida al no reconocerse dentro de ninguna tradici??n. De todos sus poemarios es el m??s rebelde, tanto en su manera de subrayar el frenes?? amoroso y la locura del poeta como en la b??squeda de no encajar en ning??n molde, ni siquiera en los suyos propios. Poes??a a contracorriente, que es lo que siempre ha hecho Marw??n desde que capitaliz?? el cambio que en los ??ltimos a??os vivi?? el mundo po??tico y del que hoy nos trae su cuarto libro. Amores que caminan por el angosto filo de la insensatez y no acatan las normas, legiones de sentimientos, delitos que se cometen a espaldas de la rutina, sonetos, aforismos, reflexiones en torno al quehacer po??tico, el vuelo de un poeta llamado ??caro. Eso es este libro. Tras tres a??os sin publicar, Marw??n vuelve a sorprendernos con su cuarto libro de poemas en el que nos descubre una nueva faceta a??n desconocida del autor.', 318, 'Papel', STR_TO_DATE('15-01-2020', '%d-%m-%Y'), STR_TO_DATE('12-06-2020', '%d-%m-%Y'), STR_TO_DATE('29-11-2021', '%d-%m-%Y'), 1, 'Castellano', 1, 68, 'https://static.cegal.es/imagenes/marcadas/9788408/978840824071.gif', 1);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1341-512-3', 'Voces que cuentan (novela gr??fica)', 'Una antolog??a', 'En este volumen se re??nen algunas de las autoras m??s relevantes del panorama sociocultural actual que nos cuentan unas historias muy ??ntimas y personales, trasladadas a novela gr??fica por algunas de las mejores dibujantes contempor??neas. Tras una preciosa ilustraci??n de cubierta de Esther Gili donde se evoca la enso??aci??n y la creatividad, hay nueve historias cortas que no dejar??n a nadie indiferente. Son relatos que hablan sobre un padre feminista; sobre lo rid??culas que se ven nuestras asociaciones de lo masculino y lo femenino cuando estas se invierten durante un d??a; sobre c??mo la anorexia fue el s??ndrome de la impostora original; sobre c??mo las mujeres, incluso cuando son mayor??a, se silencian a ellas mismas; sobre una canci??n que en su soledad habla y re??ne a todas las mujeres de la historia; sobre c??mo el compartir una tarta en un caf?? puede ser un lugar de confesiones; sobre c??mo la vida de tus antepasadas te ha formado como eres hoy; sobre c??mo un momento compartido entre madre e hija se convierte en la semilla de lo que ser?? tu obra, y sobre usar la valent??a y el coraje para hacer aquello que todo el mundo te dice que no puedes hacer solo por ser quien eres. Todas estas historias forman Voces que cuentan en los siguientes relatos: ???Julio???, por Julia Otero (Julia en la Onda) y Ada Diez (Hits With Tits) ???24 horas???, por Lola Garc??a (La Vanguardia) y Agustina Guerrero (La Vol??til) ???El bicho???, por Diana L??pez Varela (No es pa??s para co??os) y Akira Pantsu (Planeta Manga) ???Auctoritas???, por Estefan??a Molina (La Sexta Noche, Al rojo vivo) y Ana Oncina (Los f*cking 30) ???Soledad???, por Eva Amaral (Salto al Color) y Mar??a Hesse (Frida Kahlo, Bowie, El placer) ???M??s mujer???, por Leticia Dolera (Morder la manzana) y Raquel Riba Rossy (Lola Vendetta) ???Pasos de tortuga???, de Sandra Sabat??s (El intermedio) y Sandra Cardona (Bouillon) ???Por una falda de pl??tanos???, de Almudena Grandes (Los besos en el pan) y Sara Herranz (La persona incorrecta) ???Mzungu???, de Patricia Campos (Tierra, mar y aire) y Sara Soler (En la oscuridad)', 285, 'Papel', STR_TO_DATE('04-10-2019', '%d-%m-%Y'), STR_TO_DATE('23-08-2019', '%d-%m-%Y'), STR_TO_DATE('18-05-2019', '%d-%m-%Y'), 1, 'Castellano', 3, 81, 'https://static.cegal.es/imagenes/marcadas/9788413/978841341512.gif', 6);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-23455-5', 'La buena cocina', '900 recetas que siempre salen bien', 'El arte de escoger y mezclar bien los ingredientes es uno de los secretos mejor guardados de la buena cocina. Su ??xito depende de una variedad de texturas y sabores que, bien combinados, pueden tener un resultado explosivo. En este nuevo recetario de Karlos Argui??ano descubrir??s qu?? ingredientes usar en tu d??a a d??a cuidando tu salud y con lo que tengas m??s a mano en la despensa o el frigor??fico. Con un pr??ctico ??ndice de sugerencias clasificadas por ingredientes, estas 900 recetas superdeliciosas y f??ciles te permitir??n preparar completos men??s que incluyen legumbres, carnes y aves, verduras y hortalizas, pescados, huevos, cereales, frutas y postres. Lentejas con calabac??n y bolitas de boniato, boquerones a la sidra con ensalada de patata o flan de puerros y gambas. Platos de sencilla elaboraci??n que siempre salen bien, aut??nticos y saludables, para disfrutar de la buena cocina casera.', 468, 'Papel', STR_TO_DATE('10-04-2021', '%d-%m-%Y'), STR_TO_DATE('02-07-2021', '%d-%m-%Y'), STR_TO_DATE('20-12-2019', '%d-%m-%Y'), 1, 'Castellano', 5, 66, 'https://static.cegal.es/imagenes/marcadas/9788408/978840823455.gif', 3);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-24228-4', 'Los Diez Escalones', '', 'Reino de Castilla, 1283 d. C. Alvar Le??n de Lara, cardenal de la curia, vuelve a petici??n de su antiguo mentor a la abad??a que fue su hogar, que abandon?? veinte a??os atr??s con el alma rota por un amor imposible. Su maestro desea revelarle algo que cambiar?? el curso de la cristiandad. Sin embargo, la llegada de Alvar desencadenar?? la tragedia: enigmas tras puertas ocultas, cr??menes inexplicables, s??mbolos que conducen a pistas y pistas que conducen a trampas. Un descenso vertiginoso que le enfrentar?? a la mujer que desgarr?? su coraz??n, a la intransigencia de los cobardes, a la lucha por mantenerse entre los vivos y, finalmente, a los Diez Escalones. Fernando J. M????ez, autor del bestseller La cocinera de Castamar, nos transporta en esta ocasi??n a los mundos ocultos del Medievo, donde los personajes se enfrentar??n a demonios antiguos que a??n perviven entre nosotros: los prejuicios, las ideas irracionales y los dogmas inamovibles. En una ??poca en la que se confund??a a Dios con el Diablo, y donde el amor se enjaulaba bajo las leyes de los hombres, diez escalones pod??an mostrar la diferencia.', 188, 'Papel', STR_TO_DATE('14-10-2020', '%d-%m-%Y'), STR_TO_DATE('10-06-2019', '%d-%m-%Y'), STR_TO_DATE('17-05-2020', '%d-%m-%Y'), 1, 'Castellano', 7, 43, 'https://static.cegal.es/imagenes/marcadas/9788408/978840824228.gif', 5);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-22983-4', 'La reina sola', '', 'Una joven reina reci??n coronada y sin experiencia de gobierno es abandonada por su marido en los peores momentos de su peque??o reino. Unos nobles hostiles, ansiosos de poder, provocan sangrientas revueltas que amenazan su vida y la de sus hijos. Adem??s, deber?? enfrentarse, con la ayuda de unos pocos fieles, a los tres mayores poderes del siglo XIII: Carlos, el gran emperador mediterr??neo, Francia y un papa despiadado. Mientras, a su esposo Pedro le espera el enga??o y una devastadora cruzada de un poder diez veces mayor al suyo, que invadir?? la corona de Arag??n, arras??ndolo todo. Amor, odio y venganza. Una apasionante historia que cambi?? el destino de Espa??a y el poder en el Mediterr??neo.', 286, 'Papel', STR_TO_DATE('10-06-2021', '%d-%m-%Y'), STR_TO_DATE('18-03-2021', '%d-%m-%Y'), STR_TO_DATE('07-06-2020', '%d-%m-%Y'), 1, 'Castellano', 9, 74, 'https://static.cegal.es/imagenes/marcadas/9788408/978840822983.gif', 5);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-24226-0', 'Infierno en el para??so', '', 'Sonia Torres es una joven que comienza a trabajar como camarera en el Beach Club de Marbella, uno de los hoteles m??s conocidos y elitistas de la ciudad, con gran presencia de jeques y personalidades de Oriente Medio. Gracias a sus estudios de ??rabe, pronto pasa a convertirse en la camarera personal de las princesas saud??es. Amina, la segunda esposa del rey Fadel, convence a la joven para que d?? clases de castellano en el palacio a ella y a los hijos de Sultana, la primera esposa. Las grandes propinas que obtiene en el hotel junto con el desproporcionado sueldo de profesora, abren a Sonia los ojos a una realidad que podr??a poner punto y final a sus problemas. Sin embargo, todo cambiar?? cuando la joven se vea implicada en una extra??a y angustiosa trama que termina con la desaparici??n de la princesa Amina y descubra la oscura realidad que se esconde tras el oropel del lujo. Una apasionante intriga sobre la huida de una princesa saud?? encerrada en su jaula de oro', 293, 'Papel', STR_TO_DATE('21-06-2021', '%d-%m-%Y'), STR_TO_DATE('19-11-2020', '%d-%m-%Y'), STR_TO_DATE('04-03-2021', '%d-%m-%Y'), 1, 'Castellano', 4, 96, 'https://static.cegal.es/imagenes/marcadas/9788408/978840824226.gif', 6);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-24133-1', 'Felipe VI. Un rey en la adversidad', '', 'El acceso a la jefatura del Estado de Felipe VI en 2014 fue traum??tico tras la obligada abdicaci??n de su padre. Los a??os transcurridos desde entonces se han caracterizado por su convulsi??n, tanto en el ??mbito familiar del monarca como en el pol??tico e institucional de Espa??a. Con el nuevo rey, el pa??s se introdujo en un cambio de paradigma completo. De Felipe VI hay que suponerlo casi todo. Este libro nos descubre al personaje in??dito con sus circunstancias vitales y pol??ticas. Un ensayo trepidante que vuelca la experiencia del autor a lo largo de toda su vida de ejercicio profesional. Jos?? Antonio Zarzalejos, discreto gigante del periodismo, ha contado con la cercan??a de fuentes de la m??xima solvencia para poder escribir un relato hist??rico y pol??tico de tanto calado y que aporta un haz de potente luz sobre la figura y las adversidades del rey de Espa??a. ??Por qu?? sigui?? instalado don Juan Carlos en la Zarzuela tras su abdicaci??n? ??Se produjo entre 2014 y 2019 un reinado simult??neo del padre y del hijo? ??C??mo fue la expatriaci??n de Juan Carlos? ??Por qu?? en Abu Dabi? ??Le ech?? el Gobierno o le aconsej?? su hijo salir de Espa??a? ??Qu?? ocurri?? entre Felipe VI y Mariano Rajoy aquel c??lebre 3 de octubre de 2017, tras los sucesos de Catalu??a? ??Cu??l es su verdadera relaci??n con Pedro S??nchez? ??Qui??n defiende la instituci??n de la Corona y al rey? ??Reinar?? la princesa Leonor finalmente? El autor no elude ninguno de los conflictos y contradicciones de Felipe VI en un relato hist??rico tan palpitante como riguroso. En estas p??ginas no hay preguntas, hay respuestas. Quiz??, las que la sociedad necesita. La primera gran obra de referencia sobre la figura de Felipe VI que revela todas las claves de su convulso reinado.', 163, 'Papel', STR_TO_DATE('22-02-2020', '%d-%m-%Y'), STR_TO_DATE('21-06-2021', '%d-%m-%Y'), STR_TO_DATE('13-07-2020', '%d-%m-%Y'), 1, 'Castellano', 2, 100, 'https://static.cegal.es/imagenes/marcadas/9788408/978840824133.gif', 1);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-24216-1', 'Verano de lobos (Serie Haparanda 1)', '', 'El hallazgo de restos humanos en el est??mago de un lobo muerto en la localidad de Haparanda, en la frontera entre Suecia y Finlandia, pone en marcha una investigaci??n que cambiar?? para siempre el destino de la polic??a Hannah Wester. El caso parece tener v??nculos con un sangriento enfrentamiento entre narcotraficantes que tuvo lugar en Finlandia. Pero ??c??mo ha llegado el hombre hasta el bosque de las afueras de Haparanda? Hannah y sus compa??eros deber??n remover cielo y tierra para descubrir lo sucedido; el tiempo apremia y la aparici??n de nuevos cad??veres pondr?? a Hannah y a su equipo en el punto de mira. Sobre todo, cuando Katja, la m??s brillante asesina a sueldo, llegue al pueblo. Con su aparici??n, Haparanda se ver?? azotada por varios acontecimientos tan inesperados como brutales. Ad??ntrate en Haparanda, un pueblo fronterizo donde todos son sospechosos. Del autor de la Serie Bergman, con m??s de 5 millones de lectores.', 164, 'Papel', STR_TO_DATE('16-09-2020', '%d-%m-%Y'), STR_TO_DATE('30-03-2021', '%d-%m-%Y'), STR_TO_DATE('12-11-2021', '%d-%m-%Y'), 1, 'Castellano', 4, 97, 'https://static.cegal.es/imagenes/marcadas/9788408/978840824216.gif', 2);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-24010-5', 'Las cuatro amigas (Saga Hijas de una nueva era 3)', 'Una emocionante saga sobre cuatro mujeres que se enfrentaron a los momentos cruciales del siglo XX con la fuerza de la amistad', 'Hamburgo, 1970. Henny celebra su cumplea??os rodeada de su familia y de sus inseparables amigas. El hilo de la complicidad que un??a su vida con la de K??the, Lina e Ida contin??a ahora en las nuevas generaciones: Florentine, la modelo que regresa de Par??s con una inesperada noticia; Katja, que sue??a con fotografiar conflictos por todo el mundo; y Ruth, que lucha por liberarse de una relaci??n tormentosa. Todas ellas, como ya hicieran sus madres y sus abuelas, comparten la felicidad y la desgracia, los momentos aparentemente triviales y aquellos que determinan sus destinos. Son a??os de grandes acontecimientos: el pueblo alem??n est?? dividido, la guerra de Vietnam aterra a medio mundo, se expande un renacido extremismo y la ca??da del Muro de Berl??n se??ala el fin del miedo. La amistad que forjaron cuatro amigas sirvi?? de inspiraci??n para que sus hijas alcanzaran su lugar en el mundo y alumbr?? el destino de tres j??venes en el inicio de una nueva ??poca. Las cuatro amigas es la tercera y ??ltima entrega de la trilog??a Hijas de una nueva era, una emocionante saga sobre la libertad, el amor y la valent??a que narra la fascinante historia del siglo XX a trav??s de una generaci??n de mujeres que luch?? por superar las circunstancias que les toc?? vivir', 417, 'Papel', STR_TO_DATE('24-02-2020', '%d-%m-%Y'), STR_TO_DATE('28-09-2019', '%d-%m-%Y'), STR_TO_DATE('10-02-2020', '%d-%m-%Y'), 1, 'Castellano', 5, 62, 'https://static.cegal.es/imagenes/marcadas/9788408/978840824010.gif', 3);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-24124-9', 'Frida y los colores de la vida', 'Una novela fascinante sobre la mujer que forj?? una leyenda', 'M??xico, 1925. El gran deseo de Frida es ser m??dico, pero un terrible accidente le impide vivir su sue??o. El azar la une a Diego, una de las grandes figuras en el mundo de la pintura. Frida y Diego se enamoran al instante y ??l la convence para que se convierta en artista. Frida sigue sus propias ideas, intuiciones y sue??os, y consigue triunfar con un estilo ??nico, con una fuerza nunca vista. Pero el dolor del amor fallido es insoportable y ella, que super?? las limitaciones de su propio cuerpo, se tambalea ante las infidelidades de Diego. Hasta que llega el d??a en el que tiene que tomar la decisi??n m??s importante de su vida. Y al hacerlo comienza a forjar su leyenda y a alzar la voz en nombre de las mujeres que permanecen a la sombra de cualquier hombre. Una novela fascinante sobre la mujer que forj?? una leyenda. La historia de Frida como nunca te la hab??an contado.', 270, 'Papel', STR_TO_DATE('22-11-2020', '%d-%m-%Y'), STR_TO_DATE('15-01-2021', '%d-%m-%Y'), STR_TO_DATE('23-07-2020', '%d-%m-%Y'), 1, 'Castellano', 5, 45, 'https://static.cegal.es/imagenes/marcadas/9788408/978840824124.gif', 4);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-24227-7', 'Un trozo de cielo azul', 'La verdad sobre c??mo lo perd?? todo, excepto la esperanza', '??Es posible volver a empezar cuando crees que lo has perdido todo? Alonso Caparr??s se convirti?? en una estrella televisiva antes de cumplir treinta a??os, pero mientras todos ve??amos su cara sonriente en cada nuevo plat??, ??l batallaba con su adicci??n en una guerra que le impidi?? llevar la vida que siempre hab??a so??ado. Lejos de disfrutar de su estrellato, entr?? en una espiral de enga??os, peleas familiares, fracasos amorosos y degradaci??n de la que parec??a imposible salir. Ahora, convertido en un hombre nuevo, capaz de controlar a su peor enemigo ???que no es otro que ??l mismo???, nos descubre qu?? fue lo que le impidi?? rendirse cuando toc?? fondo. Esta historia es una confesi??n, pero tambi??n un relato de redenci??n. En ella, Alonso nos cuenta sin censura los episodios m??s sombr??os de su vida, c??mo estuvieron a punto de acabar con ??l y c??mo, contra todo pron??stico, descubri?? que en el mundo hay ??ngeles capaces de ver la luz hasta en los lugares m??s oscuros. Una memoria llena de remordimientos, de secretos y de esperanza. Alonso Caparr??s se sincera con todos y consigo mismo en estas memorias llenas de remordimientos, de secretos y de esperanza.', 55, 'Papel', STR_TO_DATE('26-07-2020', '%d-%m-%Y'), STR_TO_DATE('24-07-2019', '%d-%m-%Y'), STR_TO_DATE('14-01-2020', '%d-%m-%Y'), 1, 'Castellano', 3, 42, 'https://static.cegal.es/imagenes/marcadas/9788408/978840824227.gif', 2);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-08-24123-2', 'Nuestra casa', '', 'Durante una luminosa ma??ana en un barrio acomodado del sur de Londres, una familia se muda a la casa que acaba de comprar en Trinity Avenue. Nada extra??o en eso. Excepto que es tu casa. Y que no se la has vendido a nadie. Bram y Fiona Lawson se acaban de separar de forma civilizada y comparten, en turnos semanales, la custodia de los dos hijos que tienen en com??n, adem??s de la gran casa que compraron tiempo atr??s. Una ma??ana, Fiona se encuentra con un cami??n de mudanzas delante de su propiedad: al parecer, una pareja acaba de comprar su casa. Imposible, ella no la ha puesto a la venta. Al mismo tiempo, Bram y sus hijos han desaparecido sin dejar rastro y la ??nica pregunta que obsesivamente repiquetea en la mente de Fiona es: ??por qu??? Juramos confiar el uno en el otro. Pero ambos est??bamos mintiendo. PREMIO BRITISH BOOK AWARD AL MEJOR THRILLER DEL A??O.', 125, 'Papel', STR_TO_DATE('09-08-2020', '%d-%m-%Y'), STR_TO_DATE('17-11-2019', '%d-%m-%Y'), STR_TO_DATE('24-07-2019', '%d-%m-%Y'), 1, 'Castellano', 2, 82, 'https://static.cegal.es/imagenes/marcadas/9788408/978840824123.gif', 2);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-249-1', '12 nuevas reglas para vivir', '', 'Tras 12 reglas para vivir, llega su esperada continuaci??n, la obra que nos da el perfecto equilibrio entre orden y caos. En 12 reglas para vivir, obra de la que se han vendido m??s de cinco millones de ejemplares y que ha influido como ninguna otra en el ??mbito intelectual y pol??tico del ??ltimo lustro, Jordan Peterson ofrec??a verdades eternas aplicadas a las ansiedades contempor??neas. Su mensaje provocador sobre el valor de la responsabilidad individual y el significado de nuestras acciones ha resonado con enorme fuerza arrastrando a miles de lectores a las librer??as. A diferencia del anterior, centrado en las consecuencias del caos, M??s all?? del orden alerta sobre los peligros de un exceso de seguridad y control en nuestra vida y pone en valor conceptos como la creatividad, la curiosidad o la vitalidad. El objetivo es mantener el perfecto equilibrio entre los dos principios fundamentalles de la realidad: el orden y el caos, y evitar que ninguno de los dos gobierne nuestro destino. Entremezclando mitos, historia cl??sica y ejemplos personales de su propia vida y pr??ctica cl??nica, Peterson presenta doce nuevos principios para lograr una vida con m??s sentido. El autor m??s influyente y pol??mico del momento. Su libro m??s esperado.', 245, 'Papel', STR_TO_DATE('26-04-2020', '%d-%m-%Y'), STR_TO_DATE('01-09-2019', '%d-%m-%Y'), STR_TO_DATE('18-01-2021', '%d-%m-%Y'), 1, 'Castellano', 5, 69, 'https://static.cegal.es/imagenes/marcadas/9788408/978840823904.gif', 2);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-9142-439-0', 'Y t??, ??eres feminista?', '', 'Este es un libro sobre feminismo y filosof??a. Aunque el tema es el feminismo, se aborda desde un punto de vista filos??fico, porque parece que hay cosas que, por demasiado cotidianas, nos parecen inofensivas. Pero no lo son y, como m??nimo, tendr??amos que reflexionar para conseguir una vida m??s protegida y satisfactoria para todos. Porque el feminismo no es s??lo para mujeres.', 406, 'Papel', STR_TO_DATE('24-09-2019', '%d-%m-%Y'), STR_TO_DATE('12-11-2019', '%d-%m-%Y'), STR_TO_DATE('12-10-2020', '%d-%m-%Y'), 1, 'Castellano', 7, 54, 'https://static.cegal.es/imagenes/marcadas/9788491/978849142439.gif', 2);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-7898-701-6', 'Mi??rcoles Santo', '', 'El Coloreable de la Semana Santa de Sevilla. Mi??rcoles Santo, otra ilusi??n cofradiera abriendo caminos hacia la eternidad. Las puertas de la Santa Catedral, nuevamente, quedar??n impregnadas de la celestial espera. Solemne e inquieta transici??n hacia uno de esos d??as que brillan m??s que el sol. Mi??rcoles Santo y la jubilosa primavera devolvi??ndole a la ciudad la mayor de sus sonrisas. Radiantes nazarenos del Carmen visten escapularios de juventud entre veteranas y consolidadas devociones, mientras Salud, Refugio, Caridad o Piedad ponen nombre a la Misericordia de un Dios, que abandonado por sus disc??pulos y prendido de amor, ser?? traspasado al caer la tarde por San Mart??n para que bebamos para siempre de la voluntad que el Padre reserva para nuestro buen fin. Esplendor solemne por San Pedro, el dulce sue??o de Cristo va abriendo los brazos a los gozosos d??as que vuelven.', 41, 'Papel', STR_TO_DATE('21-10-2020', '%d-%m-%Y'), STR_TO_DATE('06-07-2020', '%d-%m-%Y'), STR_TO_DATE('07-06-2020', '%d-%m-%Y'), 1, 'Castellano', 8, 39, 'https://static.cegal.es/imagenes/marcadas/9788478/978847898701.gif', 3);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-9142-458-1', 'El enigma del grafitero misterioso', '', '??Qu?? significan los misteriosos grafitis que han aparecido en las paredes del colegio? Bea, Hugo y Natalia descubren que son anagramas. ??con recomendaciones de libros! A la vez que se enganchan a la lectura, buscan al enigm??tico grafitero. ??Lo conseguir??n? Una novela de intriga que mantiene la atenci??n de los j??venes lectores y lectoras alrededor de un enigma vinculado... ??a la promoci??n de la lectura! Laobra, adem??s, es un aut??ntico canto de amor a la literatura y al fomento lector entre los ni??os y ni??as.', 89, 'Papel', STR_TO_DATE('01-02-2021', '%d-%m-%Y'), STR_TO_DATE('09-03-2021', '%d-%m-%Y'), STR_TO_DATE('15-09-2020', '%d-%m-%Y'), 1, 'Castellano', 4, 75, 'https://static.cegal.es/imagenes/marcadas/9788491/978849142458.gif', 4);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-7898-538-8', 'El reto de la b??scula (Gu??a m??s Diario)', '', 'Afronta el reto de La B??scula. Di adi??s para siempre al sobrepeso con deporte y dieta sana. Ya conoces el m??todo, ahora ponlo en pr??ctica. Con la ayuda de esta gu??a, toma tus medidas, planifica tus men??s y sigue un buen programa de ejercicio para adelgazar de una forma saludable. Siente en primera persona qu?? significa ser participante de La B??scula.', 121, 'Papel', STR_TO_DATE('13-12-2020', '%d-%m-%Y'), STR_TO_DATE('11-03-2020', '%d-%m-%Y'), STR_TO_DATE('23-05-2021', '%d-%m-%Y'), 1, 'Castellano', 33, 40, 'https://static.cegal.es/imagenes/marcadas/9788478/978847898538.gif', 1);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-7898-803-7', 'M??sicos de Sevilla', '', 'Dos amigos de toda la vida charlan un Viernes de Dolores sobre como han ido evolucionando la vida y la Semana Santa en Sevilla. De bar en bar, y de cerveza en cerveza, llegan al Domingo de Ramos. A la par, Pablo, un adolescente modernito, intenta conquistar a Margarita, el amor de su vida, con la absurda idea de entrar en una banda cofrade, teniendo que lidiar con la dura decisi??n de decidir en cu??l. ??Cigarreras? ??Tres Ca??das? ??Virgen de los Reyes? En M??sicos de Sevilla. El Chiringuito de Bandones se rinde homenaje a todos esos m??sicos an??nimos que ensayan durante todo el a??o para el disfrute de los dem??s, con el humor caracter??stico del Chiringuito de Bandones que le ha reportado ya m??s de 17.000 seguidores en redes sociales.', 461, 'Papel', STR_TO_DATE('08-06-2020', '%d-%m-%Y'), STR_TO_DATE('14-01-2020', '%d-%m-%Y'), STR_TO_DATE('17-08-2021', '%d-%m-%Y'), 1, 'Castellano', 2, 64, 'https://static.cegal.es/imagenes/marcadas/9788478/978847898803.gif', 6);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-7898-629-3', 'Las Aventuras de Tueli 2', '', 'El libro ??Las aventuras de Tueli?? es el texto resultante de un proyecto de investigacion y de desarrollo lector. para ni??@s de Primaria. Es el producto de un proyecto escolar de casi dos a??os. Encontrar??s m??s de 170 preguntas y otras actividades repartidas por los cap??tulos del libro. No s??lo de comprensi??n literal sino inferencial y cr??tica. El proyecto ha sido premiado como "Experiencia del a??o" en el portal educativo Compartimos la clase. Desarrolla la Comprensi??n Lectora de una manera amena y l??dica ense??ando valores al joven lector. Descubrir?? la Fantas??a cl??sica en este libro. La fiesta m??s importante del a??o est?? a punto de celebrarse. Es el cumplea??os del Rey. Todo est?? listo para la gran fiesta pero un terrible suceso ha revolucionado la vida en el castillo. Tueli y su amigo Marcus volver??n a vivir una nueva y apasionante aventura para descubrir qui??n pudo cometer tan alta traici??n.. La corona del Rey ha desaparecido de forma misteriosa... Manuel Luis S??nchez Montero, maestro de profesi??n, ha publicado varias investigaciones de car??cter docente en el ??mbito de las TIC y la literatura infantil. Autor de varios libros como Guerra de Picos (Finalista en el Premio Internacional de Cuentos ??La Pereza 2013??), Puedes Hacerlo (Diploma en el concurso literario ??Diario de Mujeres??), Cuentos de aventuras cl??sicos, etc. Ha sido premiado con el sello Experiencia del A??o por el portal educativo Compartimos la clase y con el premio ??El juego en la escuela?? de la Fundaci??n Crecer Jugando. La saga Las aventuras de Tueli le llev?? a conseguir el premio ??Autor revelaci??n 2014?? por la revista cultural LiteraJuegos. En la actualidad imparte clases de Educaci??n Primaria en la localidad sevillana de Marchena y escribe recomendaciones de literatura infantil y de pr??ctica docente en su web www.elmaestromanu.com', 442, 'Papel', STR_TO_DATE('07-10-2020', '%d-%m-%Y'), STR_TO_DATE('29-04-2021', '%d-%m-%Y'), STR_TO_DATE('20-01-2020', '%d-%m-%Y'), 1, 'Castellano', 3, 11, 'https://static.cegal.es/imagenes/marcadas/9788478/978847898629.gif', 1);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-9142-292-1', 'La gran enciclopedia de la naturaleza', '', 'Las ilustraciones de este ??lbum te ayudar??n a descubrir la naturaleza en toda su belleza y diversidad. Adem??s, van acompa??adas de fichas identificativas y de an??cdotas divertidas que re??nen la informaci??n esencial de cada especie.', 110, 'Papel', STR_TO_DATE('20-06-2021', '%d-%m-%Y'), STR_TO_DATE('27-04-2021', '%d-%m-%Y'), STR_TO_DATE('31-10-2020', '%d-%m-%Y'), 1, 'Castellano', 4, 51, 'https://static.cegal.es/imagenes/marcadas/9788491/978849142292.gif', 1);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-7898-541-8', 'los tesoros perdidos de la Semana Santa de Sevilla', '', 'En sus manos, un nuevo paso editorial que nos llevar?? a abrir una primera ventana al exhaustivo cat??logo hist??rico, art??stico y documental sobre una parte del patrimonio perdido de las cofrad??as sevillanas y que pone en valor, una vez m??s, los grandes tesoros cofrades de la Semana Santa de Sevilla. Imaginer??a, orfebrer??a, pasos, insignias y un sinf??n de enseres que pertenecieron al acervo patrimonial de las hermandades hispalenses y que, por diversas circunstancias a trav??s de la historia, hoy en d??a se encuentran localizados en diversos puntos de nuestra geograf??a nacional. En base a todo ello, esta obra nace con la pretensi??n de ser una primera catalogaci??n, seguramente incompleta, de m??s de ciento cincuenta piezas que en su d??a sirvieron a la Semana Santa de Sevilla y que han llegado hasta nuestros d??as porque para ellas las ganaron otras ciudades, que patentizan su continuidad y vigencia en las obras cofrades.', 161, 'Papel', STR_TO_DATE('06-10-2020', '%d-%m-%Y'), STR_TO_DATE('22-02-2020', '%d-%m-%Y'), STR_TO_DATE('19-06-2020', '%d-%m-%Y'), 1, 'Castellano', 1, 55, 'https://static.cegal.es/imagenes/marcadas/9788478/978847898541.gif', 3);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-9181-995-0', 'A prop??sito de nada', '', 'A PROP??SITO DE NADA. LA AUTOBIOGRAF??A DE WOODY ALLEN. 5?? EDICI??N YA DISPONIBLE. Woody Allen que durante las seis d??cadas que lleva haciendo cine ha escrito y dirigido cincuenta pel??culas, nos relata sus primeros matrimonios: el m??s precoz con una novia de su adolescencia y luego con la maravillosamente divertida Louise Lasser, a quien es evidente que todav??a adora. Tambi??n escribe sobre su romance con Diane Keaton, con quien mantiene una prolongada amistad. Y explica su relaci??n personal y profesional con Mia Farrow, con quien realiz?? varias pel??culas ahora cl??sicas, y que termin?? con una separaci??n por la que la prensa sensacionalista a??n no le ha dado suficientemente las gracias. ??l afirma que fue el primer sorprendido cuando, a sus cincuenta y seis a??os, inici?? una relaci??n con Soon-Yi Previn, que entonces ten??a veintiuno, y que los condujo a un romance estrepitoso y apasionado y a un matrimonio feliz de m??s de veintid??s a??os. En un texto a menudo hilarante, haciendo gala de una franqueza sin l??mites, lleno de creativas intuiciones y de bastante perplejidad, un icono americano cuenta su historia, aunque nadie se lo haya pedido. CR??TICAS: Las memorias del actor y director, A prop??sito de nada, son de lectura obligada para cin??filos. La Vanguardia. Un texto a menudo hilarante, haciendo gala de una franqueza sin l??mites, lleno de creativas intui??ciones y de bastante perplejidad, un icono americano cuenta su historia. Cadena SER. Es imposible hacerlo mejor que Woody Allen. Carlos Boyero. Yo s?? muy poco de cine pero s?? he le??do algunos libros y cr??anme, este se parece mucho a los libros excelentes. Diego S. Garrocho Salcedo. El Mundo. Woody Allen no ha escrito su autobiograf??a por placer, sino por tomar su propia defensa. Fernando Trueba.', 139, 'Papel', STR_TO_DATE('21-06-2020', '%d-%m-%Y'), STR_TO_DATE('10-03-2021', '%d-%m-%Y'), STR_TO_DATE('12-03-2020', '%d-%m-%Y'), 1, 'Castellano', 8, 19, 'https://static.cegal.es/imagenes/marcadas/9788491/978849181995.gif', 4);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-121-0', 'Nuestros inesperados hermanos', '', 'Alec, dibujante de mediana edad, y Eve, novelista de un m??tico ??xito editorial, son los ??nicos habitantes de un islote diminuto de la costa atl??ntica. Se evitan, hasta el d??a en que una inexplicable aver??a de todos los medios de comunicaci??n les fuerza a salir de su celosa soledad. ??Qu?? est?? pasando? ??Ha sufrido un cataclismo el planeta tras las amenazas continuas de un conflicto nuclear y de atentados terroristas a gran escala? ??Qu?? ha ocurrido en las islas cercanas, en la costa, en el resto del pa??s, en el resto del planeta? Alec resolver??, poco a poco, el misterio. Gracias a su viejo amigo Moro, convertido en uno de los consejeros de confianza del presidente de Estados Unidos, conseguir?? reconstruir el desarrollo de los acontecimientos, hasta descubrir que, si bien hemos escapado al desastre, lo hemos hecho de una manera tan extra??a e inesperada que la Historia no podr?? retomar su curso como hasta ahora. El tumultuoso encuentro de nuestros contempor??neos desorientados con sus "inesperados hermanos", pertenecientes a una misteriosa civilizaci??n que se proclama heredera de la antigua Grecia y que ha alcanzado un saber m??dico mucho m??s avanzado que el nuestro, convierte a esta novela en un cuento moderno de gran fuerza dram??tica. A trav??s de la ficci??n y de la par??bola, el autor trata en una narraci??n los grandes temas abordados en sus ensayos como "Identidades asesinas", "El desajuste del mundo" y "El naufragio de las civilizaciones"...; pero abriendo la puerta a la esperanza que nos brindan "nuestros inesperados hermanos".', 88, 'Papel', STR_TO_DATE('12-05-2020', '%d-%m-%Y'), STR_TO_DATE('16-10-2020', '%d-%m-%Y'), STR_TO_DATE('04-10-2019', '%d-%m-%Y'), 1, 'Castellano', 0, 9, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362121.gif', 5);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-206-7420-9', 'El guardi??n entre el centeno', '', 'Por expreso deseo del autor, no est?? permitido que la editorial aporte en su material promocional ning??n tipo de texto adicional, informaci??n biogr??fica, cita o rese??a relacionados con esta obra. El lector interesado podr??, no obstante, encontrar abundante informaci??n al respecto en internet.', 116, 'Papel', STR_TO_DATE('12-09-2019', '%d-%m-%Y'), STR_TO_DATE('14-12-2020', '%d-%m-%Y'), STR_TO_DATE('20-11-2020', '%d-%m-%Y'), 1, 'Castellano', 20, 83, 'https://static.cegal.es/imagenes/marcadas/9788420/978842067420.gif', 6);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-213-2', 'La canci??n de Aquiles (AdN)', '', 'De la autora de Circe, una epopeya inolvidableGrecia en la era de los h??roes. Patroclo, un pr??ncipe joven y torpe, ha sido exiliado al reino de Ft??a, donde vive a la sombra del rey Peleo y su hijo divino, Aquiles.Aquiles, el mejor de los griegos, es todo lo que no es Patroclo: fuerte, apuesto, hijo de una diosa. Un d??a Aquiles toma bajo su protecci??n al lastimoso pr??ncipe y ese v??nculo provisional da paso a una s??lida amistad mientras ambos se convierten en j??venes habilidosos en las artes de la guerra.Pero el destino nunca est?? lejos de los talones de Aquiles. Cuando se extiende la noticia del rapto de Helena de Esparta, se convoca a los hombres de Grecia para asediar la ciudad de Troya. Aquiles, seducido por la promesa de un destino glorioso, se une a la causa, y Patroclo, dividido entre el amor y el miedo por su compa??ero, lo sigue a la guerra. Poco pod??a imaginar que los a??os siguientes iban a poner a prueba todo cuanto hab??an aprendido y todo cuanto valoraban profundamente.', 247, 'Papel', STR_TO_DATE('04-11-2021', '%d-%m-%Y'), STR_TO_DATE('09-11-2020', '%d-%m-%Y'), STR_TO_DATE('15-05-2020', '%d-%m-%Y'), 1, 'Castellano', 4, 48, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362213.gif', 1);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-206-7417-9', 'El Se??or de las Moscas', '', '"El se??or de las moscas" es Premio Nobel de Literatura 1983, una f??bula moral acerca de la condici??n humana.Urdida en torno a la situaci??n l??mite de una treintena de muchachos en una isla desierta, El Se??or de las Moscas es una magn??fica novela que admite lecturas diferentes e incluso opuestas. En efecto, si algunos pueden ver en esta indagaci??n de William Golding en la condici??n humana la ilustraci??n de que la agresividad criminal se halla entre los instintos b??sicos del hombre, otros podr??n considerarla como una par??bola que cuestiona un tipo de educaci??n represiva que no hace sino incubar explosiones de barbarie prestas a estallar en cuanto los controles se relajan.', 317, 'Papel', STR_TO_DATE('16-09-2019', '%d-%m-%Y'), STR_TO_DATE('22-10-2021', '%d-%m-%Y'), STR_TO_DATE('29-09-2020', '%d-%m-%Y'), 1, 'Castellano', 2, 41, 'https://static.cegal.es/imagenes/marcadas/9788420/978842067417.gif', 2);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-202-6', 'Fantasmas azules (AdN)', '', 'Mar??a es una joven periodista acostumbrada a dejar huella que, desencantada tras una ruptura amorosa, decide aceptar una corresponsal??a en Kabul. All?? encontrar?? un mundo diferente, extra??o y m??gico por momentos, azul y amarillo, dividido e inescrutable, poblado por mujeres que se le escurren y que no termina de entender. Un mundo en el que confluyen muchos otros personajes en ese crisol que es una ciudad devastada y en proceso de reinvenci??n, como Mahmud, un guerrillero reci??n descendido de las monta??as donde a??n humea la contienda, que busca reinventarse y a??ora una infancia que casi no tuvo, perdida entre cometas y granadas, y que se ofrece como int??rprete a Sim??n, un coordinador de Naciones Unidas encerrado en su peque??o mundo de hombre occidental que siente que tiene algo que demostrar. Y tambi??n est?? Ibrah??m, un vendedor de alfombras marcado por los recuerdos; y Jana, una anciana que ha visto a demasiadas mujeres desaparecer; y M??ster Marta, m??dico de una ONG, que desde su forma especial de entender el mundo, eligi?? quedarse en las monta??as cuando sus compa??eros se marcharon. Fantasmas azules es una pieza de orfebrer??a, una novela que nos habla de miradas, de silencios, de encuentros y p??rdidas, de infancias recobradas. Pero tambi??n una reflexi??n sobre la identidad construida a partir de las miradas de otros y sobre la individualidad en un tiempo donde todo, hasta las certezas, se nos ofrecen envueltas y masticadas. Con ella, con su prosa anegada de poes??a, luz, agua e iron??a, Paula Farias se confirma como una de las narradoras m??s sabias e incisivas de nuestras letras.', 499, 'Papel', STR_TO_DATE('31-03-2020', '%d-%m-%Y'), STR_TO_DATE('27-04-2020', '%d-%m-%Y'), STR_TO_DATE('14-08-2019', '%d-%m-%Y'), 1, 'Castellano', 1, 91, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362202.gif', 3);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-215-6', 'Mil lunas (AdN)', '', 'Del autor de D??as sin final, ganador del premio Costa 2016 a la mejor novela Winona es una joven hu??rfana lakota, adoptada por los antiguos soldados Thomas McNulty y John Cole. Vive con Thomas y John en la granja donde ambos trabajan en la d??cada de 1870 en Tennessee; recibe educaci??n y cari??o, lo que la ayuda a forjarse una vida por s?? misma superando la violencia y los expolios de su pasado. Pero en los tiempos que siguen a la guerra de Secesi??n, la fr??gil armon??a de su ins??lita unidad familiar pronto se ver?? amenazada por otro traum??tico acontecimiento, que a Winona le costar?? afrontar y mucho m??s comprender. Narrada con la magn??fica y excepcional prosa de Sebastian Barry, Mil lunas es el poderoso y conmovedor retrato del viaje de una mujer, de su determinaci??n por escribir su propio futuro y de la inquebrantable capacidad humana de amar.', 48, 'Papel', STR_TO_DATE('18-10-2020', '%d-%m-%Y'), STR_TO_DATE('19-06-2019', '%d-%m-%Y'), STR_TO_DATE('09-06-2021', '%d-%m-%Y'), 1, 'Castellano', 3, 94, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362215.gif', 4);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-219-4', 'El papel del hijo (AdN)', '', 'PREMIO JEAN GIONO 2019Durante mucho tiempo, no supe casi nada de Paol aparte de estos retazos.??Bajo el r??gimen de Vichy, una carta de denuncia fue suficiente. A principios de septiembre de 1943, Paol, un ex oficial del ej??rcito colonial franc??s, fue detenido por la Gestapo en un pueblo de Finisterre. Raz??n: "desconocida". Se lo llevaron a la prisi??n de Brest, lo encarcelaron con los "terroristas", lo interrogaron. Luego se vio inmerso en el engranaje de los campos de concentraci??n nazis, en Francia y Alemania. Nada logr?? traerlo de vuelta. El silencio pes?? durante mucho tiempo sobre la familia. En esta regi??n de vientos y landas no se menta la desgracia. A??os despu??s, sal?? en busca de aquel hombre, que era mi abuelo. Sal?? a su encuentro. Y lo que no encontr?? de boca de los ??ltimos testigos ni registrado en los archivos, me lo invent??. Para revivir a Paol.??J.-L.C.El gran libro que Jean-Luc Coatalem llevaba dentro.', 474, 'Papel', STR_TO_DATE('19-06-2019', '%d-%m-%Y'), STR_TO_DATE('28-05-2021', '%d-%m-%Y'), STR_TO_DATE('03-06-2019', '%d-%m-%Y'), 1, 'Castellano', 5, 17, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362219.gif', 5);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-204-0', 'El dilema (AdN)', '', 'El nuevo e intrigante thriller psicol??gico de la autora de Al cerrar la puertaSaber la verdad la destrozar??. Ocultarla lo destrozar?? a ??l.Livia cumple cuarenta a??os y va a dar la fiesta de su vida para resarcirse del banquete nupcial que nunca tuvo. Ir??n todos sus seres queridos, menos su hija Marnie, que estudia en el extranjero, y aunque Livia la adora, en el fondo se alegra de que no vaya a estar presente. Tiene que contarle a Adam, su marido, algo sobre la ni??a, pero esperar?? a que termine la fiesta para poder as?? disfrutar de ese ??ltimo momento de felicidad conjunta.Adam, empe??ado en que la fiesta de Livia sea perfecta, ha organizado en secreto la visita de Marnie, pero a lo largo del d??a se entera de una noticia horrible. Tiene que cont??rselo a Livia porque ??c??mo van a celebrar la fiesta con lo que ha pasado? Pero su mujer est?? muy contenta e ilusionada... y los invitados a punto de llegar.??Hasta d??nde ser??as capaz de llegar para que el amor de tu vida disfrute de sus ??ltimas horas de felicidad?El dilema, que narra c??mo un solo d??a cambia para siempre la vida entera de una familia, es la nueva novela desoladora y arrebatadora de la autora superventas B. A. Paris.', 56, 'Papel', STR_TO_DATE('04-03-2020', '%d-%m-%Y'), STR_TO_DATE('01-10-2019', '%d-%m-%Y'), STR_TO_DATE('02-06-2019', '%d-%m-%Y'), 1, 'Castellano', 7, 15, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362204.gif', 6);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-221-7', 'El canto de las monta??as (AdN)', '', 'La novela definitiva para entender la historia reciente de VietnamEl canto de las monta??as cuenta una historia envolvente, que discurre a trav??s de varias generaciones de la familia Tran, con el tel??n de fondo de la guerra de Vietnam. Tran Dieu Lan, nacida en 1920, se vio obligada a huir de las tierras de su familia con cinco de sus seis hijos durante la reforma agraria, cuando el gobierno comunista se hizo con el poder en el norte del pa??s. A??os m??s tarde, en Han??i, su joven nieta, Huong, alcanza la madurez mientras sus padres y sus t??os avanzan por la senda Ho Chi Minh para luchar en un conflicto que desgarr?? no solo a su querido pa??s sino tambi??n a su familia. El canto de las monta??as, primera novela publicada en espa??ol de la reputada poeta vietnamita Nguyen Phan Que Mai, es un relato vivo y apasionante, impregnado del lenguaje y de las tradiciones de Vietnam. Ilumina el coste humano de este conflicto desde el punto de vista del propio pueblo vietnamita, a la vez que nos muestra el verdadero poder de la bondad y la esperanza.', 265, 'Papel', STR_TO_DATE('04-01-2020', '%d-%m-%Y'), STR_TO_DATE('25-09-2020', '%d-%m-%Y'), STR_TO_DATE('17-03-2021', '%d-%m-%Y'), 1, 'Castellano', 9, 6, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362221.gif', 1);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-167-8', 'El problema de la paz', '', 'Segundo en la trilog??a La Era de la Locura, El problema de la paz es la nueva entrega de una serie que est?? revolucionando la fantas??a... Conspiraci??n. Traici??n. Rebeli??n. La paz es solo otro tipo de campo de batalla... A pesar de los reveses sufridos, no hay nada que se interponga en el camino de Savine dan Glokta, en el pasado la inversora m??s poderosa de Adua, cuando ha puesto su ambici??n en un objetivo. Para h??roes como Leo dan Brock y Stour Ocaso la paz no es m??s que un inconveniente que debe remediarse cuanto antes. Pero primero hay que alimentar agravios y reunir aliados. Entre tanto, Rikke tiene que dominar el ojo largo... antes de que su poder acabe con ella. En todos los sectores de la sociedad anida el descontento. Los Rompedores a??n acechan en la clandestinidad, tramando planes para llevar a cabo el Gran Cambio que por fin libere al pueblo, mientras los nobles descontentos tratan de aumentar su influencia y sus prebendas. Orso intenta hallar un camino seguro en el laberinto de cuchillos que es la pol??tica, pero sus deudas y sus enemigos no dejan de aumentar. Ninguna alianza, ninguna amistad, ninguna paz, dura para siempre.', 419, 'Papel', STR_TO_DATE('15-06-2020', '%d-%m-%Y'), STR_TO_DATE('28-06-2020', '%d-%m-%Y'), STR_TO_DATE('12-03-2021', '%d-%m-%Y'), 1, 'Castellano', 4, 36, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362167.gif', 2);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-057-2', 'Fuego nocturno (Harry Bosch y Ren??e Ballard)', '', 'La nueva novela de Michael Connelly el maestro de la novela negra.Harry Bosch y la detective Ballard vuelven a unir fuerzas. Cuando era un detective de Homicidios novato, Harry Bosch tuvo un mentor que le ense???? a tomarse el trabajo de forma personal y prender la llama de la tenacidad para no dejar ni un caso sin resolver: John Jack Thompson. Este ha muerto, pero, tras su funeral, su viuda le entrega a Bosch el informe de un asesinato que Thompson se llev?? consigo cuando dej?? la Polic??a de Los ??ngeles 20 a??os atr??s: el caso abierto del asesinato de un joven con problemas en un callej??n usado para trapicheos de drogas. Bosch le muestra el informe a Ren??e Ballard y le pide ayuda para averiguar por qu?? el caso dispar?? el inter??s de Thompson hace tantos a??os. Ese ser?? su punto de partida. Bosch y Ballard se convierten en un equipo de investigaci??n formidable y su v??nculo se estrecha. Y pronto les surge una duda preocupante: ??rob?? Thompson el informe para trabajar en el caso en su jubilaci??n o para asegurarse de que nunca se resolviera?', 377, 'Papel', STR_TO_DATE('15-09-2019', '%d-%m-%Y'), STR_TO_DATE('28-04-2020', '%d-%m-%Y'), STR_TO_DATE('10-07-2020', '%d-%m-%Y'), 1, 'Castellano', 2, 58, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362057.gif', 3);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-223-1', 'Lo que te persigue (AdN)', '', 'La confirmaci??n de un gran talento literarioIsrael es un vendedor de seguros y escritor en plena crisis de la mediana edad al que de pronto se le viene el mundo encima cuando, tras unas pruebas m??dicas, su madre debe ingresar en un hospital de Vigo, su ciudad.Son noches largas, en las que, a la espera de an??lisis y resultados, no parece f??cil dormir, pero Israel tiene mucho en que pensar mientras deambula por los pasillos. Como en Mario, su hijo de nueve a??os, al que ha criado como suyo pero que ha empezado a hacer preguntas sobre su padre biol??gico; o la enfermedad a??n sin nombre de su madre, y en ella y su fortaleza, tambi??n en su pasado como madre soltera y en todo lo que tuvo que vivir durante la primera infancia de Israel, como la extra??a muerte de su t??o Jaime; o en su hermano, Alberto, de viaje en Cuba y que afirma que regresar?? pronto con Yanelis, una desconocida con voz demasiado ronca que dice ser el amor de su vida; o en Agustina, la hija de la mujer con quien su madre comparte habitaci??n en el hospital, una mujer excesivamente amable que parece ocultar algo... O la curiosa relaci??n entre la tan so??ada carrera literaria de Israel y su vida sexual, porque tras haber logrado al fin publicar una novela negra con una editorial prestigiosa, la intimidad con su mujer ya no ha vuelto a ser la misma.Pero, sobre todo, Israel, piensa, aunque no quiera, en Teresa Salgueiro, una aguerrida portuguesa de profundos ojos verdes que acaba de realizar un fallido asalto a un furg??n blindado y ahora es una fugitiva de la polic??a. Teresa es la protagonista de su nueva novela. Esa que no debe escribir porque tiene cosas m??s importantes en que pensar...Con Lo que te persigue ??scar Montoya se consagra como uno de los autores m??s brillantes de su generaci??n, con una prosa profunda y un talento ??nico para la iron??a.', 348, 'Papel', STR_TO_DATE('20-06-2020', '%d-%m-%Y'), STR_TO_DATE('21-08-2019', '%d-%m-%Y'), STR_TO_DATE('27-08-2020', '%d-%m-%Y'), 1, 'Castellano', 4, 23, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362223.gif', 3);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-206-5136-1', 'La metamorfosis', '', '??Al despertar Gregorio Samsa una ma??ana, tras un sue??o intranquilo, se encontr?? en su cama convertido en un monstruoso insecto.?? Tal es el abrupto comienzo, que nos sit??a de ra??z bajo unas reglas distintas, de " La metamorfosis " , sin duda alguna la obra de Franz Kafka que ha alcanzado mayor celebridad. Escrito en 1912 y publicado en 1916, este relato es considerado una de las obras maestras del siglo xx por sus innegables rasgos precursores y el caudal de ideas e interpretaciones que desde siempre ha suscitado. Completan este volumen los relatos ??Un artista del hambre?? y ??Un artista del trapecio??.', 244, 'Papel', STR_TO_DATE('22-09-2020', '%d-%m-%Y'), STR_TO_DATE('21-06-2021', '%d-%m-%Y'), STR_TO_DATE('16-11-2021', '%d-%m-%Y'), 1, 'Castellano', 5, 25, 'https://static.cegal.es/imagenes/marcadas/9788420/978842065136.gif', 3);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-227-9', 'Una historia verdadera (AdN)', '', 'Una novela cautivadora y asombrosamente original sobre el acoso y el poder de las historias... y de quienes consiguen contarlas2015. Una escritora en la sombra, solitaria y con talento llamada Alice Lovett se gana la vida ayudando a otras personas a escribir historias. Sin embargo, a ella la persigue una historia propia que no puede narrar: la historia de ??lo que pas?? mientras dorm??a??, como ella la define.1999. Nick Brothers y sus compa??eros del equipo de lacrosse comienzan el ??ltimo curso en un acomodado instituto de Maryland como los campeones estatales. Est??n en la cima del mundo, hasta que dos de sus amigos llevan a una chica a casa, despu??s de que esta pierda el conocimiento en una de las fiestas ??legendarias?? del equipo, y de que un rumor sobre lo sucedido en el asiento de atr??s del coche se extienda como la p??lvora por el pueblo.Los j??venes niegan las acusaciones y, al final, el pueblo pasa p??gina. Pero no todos. Nick cae en el alcoholismo y Alice desarrolla una vida de vaivenes en la que se menosprecia a s?? misma y conf??a en la gente equivocada. Cuando por fin tiene la oportunidad de enfrentarse al pasado que no recuerda -pero que ha conformado su vida-, ??lo aceptar???Una historia verdadera es un an??lisis ingenioso y sobrecogedor de una mujer que busca su voz en las secuelas del trauma: una mezcla de thriller psicol??gico, delirio y an??lisis sobre la agresi??n sexual, el poder y la naturaleza de la verdad. Su chispeante estructura, llena de giros y vueltas, que mantendr?? al lector en vilo hasta las ??ltimas p??ginas, marca el debut de una nueva voz en la ficci??n, una voz singular y atrevida.', 183, 'Papel', STR_TO_DATE('29-08-2020', '%d-%m-%Y'), STR_TO_DATE('02-01-2021', '%d-%m-%Y'), STR_TO_DATE('25-08-2020', '%d-%m-%Y'), 1, 'Castellano', 5, 7, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362227.gif', 3);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-233-0', 'El explorador (AdN)', '', 'Una desaparici??n. Un pueblo peque??o. Una pregunta pendiente de respuesta...Cal Hooper pensaba que retirarse a un pueblo perdido de Irlanda y dedicarse a reformar una casita ser??a la gran evasi??n. Despu??s de veinticinco a??os en el cuerpo de polic??a de Chicago, y tras un divorcio doloroso, lo ??nico que quiere es construir una vida nueva en un sitio bonito donde haya un buen pub y nunca pase nada.Hasta que un buen d??a un chico del pueblo va a verlo para pedirle ayuda. Su hermano ha desaparecido y a nadie parece importarle, menos a??n a la polic??a. Cal no quiere saber nada de ninguna investigaci??n, pero algo indefinido le impide desentenderse.Cal no tardar?? en descubrir que incluso en el pueblecito m??s id??lico se escoden secretos, la gente no es siempre lo que parece y los problemas pueden venir a llamar a tu puerta.La que es la m??s brillante escritora de suspense de nuestros d??as teje un magistral relato que corta la respiraci??n por la belleza y la intriga que destila, al tiempo que reflexiona sobre c??mo decidimos lo que est?? bien y lo que est?? mal en un mundo en que ni lo uno ni lo otro es tan sencillo, y a qu?? nos arriesgamos cuando nos equivocamos.', 267, 'Papel', STR_TO_DATE('05-02-2020', '%d-%m-%Y'), STR_TO_DATE('02-07-2019', '%d-%m-%Y'), STR_TO_DATE('27-08-2019', '%d-%m-%Y'), 1, 'Castellano', 3, 65, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362233.gif', 1);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-225-5', 'Los profetas (AdN)', '', 'Un debut singular e impresionante sobre la uni??n prohibida entre dos j??venes esclavos en una plantaci??n del Sur profundoIsaiah era de Samuel y Samuel era de Isaiah. Hab??a sido as?? desde el principio, y as?? habr??a de ser hasta el final. En el establo cuidan de los animales, pero tambi??n el uno del otro, transformando la construcci??n hueca en un espacio de cobijo humano, una fuente de intimidad y esperanza en un mundo gobernado por crueles patrones. Sin embargo, cuando un hombre mayor, tambi??n ??l esclavo, pretende ganar favores predicando en la plantaci??n el evangelio del amo, los cautivos empiezan a volverse contra los suyos. El amor de Isaiah y Samuel, tan sencillo en otros tiempos, se ve ahora como algo pecaminoso y un claro peligro para la armon??a de la plantaci??n.Con un lirismo que nos recuerda al de Toni Morrison, Robert Jones Jr. evoca con pasi??n las voces de amos y esclavos por igual, desde las de Isaiah y Samuel hasta las del calculador patr??n o la larga estirpe de mujeres que los rodean, mujeres que han llevado siempre a sus espaldas el alma de la plantaci??n. Conforme la tensi??n aumenta y el peso de los siglos -de los antepasados y de las generaciones que est??n por venir- acaba en un juicio culminante, Los profetas va revel??ndonos con maestr??a el dolor y el sufrimiento que supone el legado, aunque tambi??n hay hueco para la esperanza, la belleza y la verdad en el retrato que hace del poderoso y heroico poder del amor.', 83, 'Papel', STR_TO_DATE('02-12-2021', '%d-%m-%Y'), STR_TO_DATE('29-01-2020', '%d-%m-%Y'), STR_TO_DATE('06-05-2019', '%d-%m-%Y'), 1, 'Castellano', 2, 37, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362225.gif', 2);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-9181-551-8', '1080 recetas de cocina', '', '"1080 recetas de cocina" es un cl??sico por excelencia, y hoy podemos decir que, gracias a ??l, m??s de cinco millones de personas han aprendido, al margen de modas m??s o menos pasajeras, los secretos de la cocina y el bien comer. Reconocido por los grandes chefs de la cocina espa??ola, cuya relevancia ha trascendido con mucho el ??mbito de nuestras fronteras, como su libro de cabecera y el referente imprescindible para toda persona que quiera acercarse a los fogones, "1080 recetas de cocina" no ha perdido un ??pice de su vigencia, gracias tambi??n a la labor de revisi??n llevada a cabo por In??s Ortega, la hija de la insigne gastr??noma. Esta edici??n de bolsillo, en formato econ??mico con nuevo dise??o de interiores, nueva encuadernaci??n y mejor legibilidad y localizaci??n de recetas e ingredientes (y que incluye tambi??n l??mina protectora) incorpora las versiones m??s ligeras de un buen n??mero de preparaciones. Sus 1080 recetas, que nunca fallan, re??nen el gusto por los platos sabrosos y la respuesta a toda persona interesada por las pautas actuales de una alimentaci??n saludable y sostenible.', 137, 'Papel', STR_TO_DATE('30-11-2020', '%d-%m-%Y'), STR_TO_DATE('11-01-2020', '%d-%m-%Y'), STR_TO_DATE('01-07-2019', '%d-%m-%Y'), 1, 'Castellano', 5, 34, 'https://static.cegal.es/imagenes/marcadas/9788491/978849181551.gif', 3);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-327-6', 'La chica oculta y otros relatos', '', 'Esta colecci??n incluye una selecci??n de la ficci??n especulativa de Liu en los ??ltimos cinco a??os: dieciocho de sus mejores relatos y un fragmento de El trono velado, el tercer volumen de la serie de fantas??a ??pica La Dinast??a del Diente de Le??n. Desde narraciones sobre asesinos que viajan en el tiempo o sobre criptomonedas hasta conmovedoras historias de relaciones entre padres e hijos, los relatos de este volumen exploran temas importantes para el presente y arrojan una mirada visionaria al futuro de la humanidad.', 82, 'Papel', STR_TO_DATE('06-11-2019', '%d-%m-%Y'), STR_TO_DATE('08-01-2020', '%d-%m-%Y'), STR_TO_DATE('04-12-2021', '%d-%m-%Y'), 1, 'Castellano', 7, 22, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362327.gif', 4);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-9181-807-6', 'Mi dulce ni??a (AdN)', '', 'Una caba??a sin ventanas en medio del bosque. La vida de Lena y sus dos hijos sigue reglas estrictas: los horarios para comer, ir al ba??o o estudiar se respetan a rajatabla. El ox??geno les llega a trav??s de un ??aparato de circulaci??n??. El padre provee a la familia de alimentos, los protege de los peligros del mundo exterior, se ocupa de que sus hijos siempre tengan una madre. Pero un d??a consiguen escapar... y es entonces cuando empieza la verdadera pesadilla. Porque todo parece indicar que el secuestrador quiere recuperar lo es suyo. En un thriller tan emocionalmente impactante como profundamente conmovedor, Romy Hausmann va desplegando l??nea a l??nea el panorama de un horror que sobrepasa toda capacidad de imaginaci??n.', 243, 'Papel', STR_TO_DATE('06-10-2020', '%d-%m-%Y'), STR_TO_DATE('26-11-2019', '%d-%m-%Y'), STR_TO_DATE('02-06-2019', '%d-%m-%Y'), 1, 'Castellano', 8, 56, 'https://static.cegal.es/imagenes/marcadas/9788491/978849181807.gif', 5);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-206-7429-2', 'El lobo estepario', '', 'Encrucijada de todas las obsesiones e intuiciones de Hermann Hesse (1877-1962) y exponente de su singular talento para el relato, El lobo estepario se inscribe dentro del empe??o, patente a lo largo de toda su obra, por iluminar la zona oscura de la condici??n humana a fin de poner al descubierto su carga tr??gica y su incierto destino. Ser solitario e incomunicado, extra??o y extra??ado, Harry Haller, protagonista de esta emblem??tica novela, ha acabado convirti??ndose en un arquetipo literario en el que se reconocen quienes padecen los efectos deshumanizadores de una sociedad que no conoce la solidaridad y propicia el aislamiento.', 384, 'Papel', STR_TO_DATE('21-01-2020', '%d-%m-%Y'), STR_TO_DATE('05-01-2021', '%d-%m-%Y'), STR_TO_DATE('07-12-2020', '%d-%m-%Y'), 1, 'Castellano', 4, 26, 'https://static.cegal.es/imagenes/marcadas/9788420/978842067429.gif', 6);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION, FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA, ID_EDITORIAL) VALUE ('978-84-1362-263-7', 'Freddie Mercury', '', 'Una caba??a sin ventanas en medio del bosque. La vida de Lena y sus dos hijos sigue reglas estrictas: los horarios para comer, ir al ba??o o estudiar se respetan a rajatabla. El ox??geno les llega a trav??s de un ??aparato de circulaci??n??. El padre provee a la familia de alimentos, los protege de los peligros del mundo exterior, se ocupa de que sus hijos siempre tengan una madre. Pero un d??a consiguen escapar... y es entonces cuando empieza la verdadera pesadilla. Porque todo parece indicar que el secuestrador quiere recuperar lo es suyo. En un thriller tan emocionalmente impactante como profundamente conmovedor, Romy Hausmann va desplegando l??nea a l??nea el panorama de un horror que sobrepasa toda capacidad de imaginaci??n.', 469, 'Papel', STR_TO_DATE('29-05-2019', '%d-%m-%Y'), STR_TO_DATE('13-05-2021', '%d-%m-%Y'), STR_TO_DATE('30-03-2021', '%d-%m-%Y'), 1, 'Castellano', 33, 38, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362263.gif', 1);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION,
                   FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA,
                   ID_EDITORIAL) VALUE ('978-84-1362-266-8', 'Hero: David Bowie', '',
                                        'Mundialmente aclamado como el artista m??s innovador de su generaci??n, David Bowie destac?? como m??sico y compositor, pero tambi??n mostr?? su talento como pintor, actor y productor. Lesley-Ann Jones lo conoci?? desde su infancia, en la peque??a localidad de Bromley, al sur de Londres. Ya entonces era un joven desesperado por expresar su talento, frustrado por un entorno que lo ahogaba y determinado a conseguir el reconocimiento y la fortuna que sin duda merec??a. Con el trasfondo de la evoluci??n del pop y del rock en los ??ltimos cincuenta a??os, y a trav??s de entrevistas con amigos ??ntimos y con colaboradores que lo trataron a lo largo de su carrera, y que nunca antes hab??an contado sus experiencias personales, la autora nos ofrece una biograf??a ??nica que refleja al mismo tiempo la vida p??blica y privada de un artista que marc?? una ??poca.',
                                        165, 'Papel', STR_TO_DATE('26-11-2019',
                                        '%d-%m-%Y'), STR_TO_DATE('09-02-2021', '%d-%m-%Y'), STR_TO_DATE('24-10-2019', '%d-%m-%Y'), 1, 'Castellano', 2, 44, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362266.gif', 4);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION,
                   FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA,
                   ID_EDITORIAL) VALUE ('978-84-1362-264-4', 'Lou Reed: Su vida', '',
                                        'Lou Reed compon??a canciones sobre las drogas, la sordidez, la sexualidad transgresora, las prostitutas honorables y los buscavidas de tres al cuarto. Tambi??n compuso algunas de las canciones de amor m??s conmovedoras de su ??poca, desde "Pale Blue Eyes" hasta "Perfect Day". Arranc?? desde el punto donde lo hab??a dejado el rock. Antes de ??l, el rock ten??a que ver con la diversi??n. Despu??s de ??l, el rock fue literario, sombr??o, y por encima de todo inquietantemente sincero. Siempre una generaci??n por delante, nunca recibi?? lo que se merec??a hasta cuando era ya demasiado tarde. La historia de Lou Reed est?? llena de esas contradicciones.',
                                        383, 'Papel', STR_TO_DATE('01-06-2020',
                                        '%d-%m-%Y'), STR_TO_DATE('28-06-2019', '%d-%m-%Y'), STR_TO_DATE('25-11-2019', '%d-%m-%Y'), 1, 'Castellano', 3, 10, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362264.gif', 4);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION,
                   FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA,
                   ID_EDITORIAL) VALUE ('978-84-1362-265-1', 'Prince. El reino p??rpura', '',
                                        'Prince fue un icono universal. Un creador que defini?? una era musical y transform?? el aspecto de la cultura popular para siempre. Este libro ofrece una perspectiva de la vida de Prince, sin tab??es ni concesiones, como nunca se hab??a hecho antes. Desde su traum??tica infancia, en la que busc?? en la m??sica de manera obsesiva una v??a de escape a la infelicidad, hasta su ascenso al estrellato, pasando por un sinf??n de rivalidades profesionales y, tambi??n, varios matrimonios fallidos. Y todo ello sin olvidar el fino an??lisis de sus renovados proyectos musicales a trav??s de comentarios del propio Prince, de sus m??sicos y de quienes lo conocieron en primera persona.',
                                        69, 'Papel', STR_TO_DATE('05-07-2019',
                                        '%d-%m-%Y'), STR_TO_DATE('08-11-2019', '%d-%m-%Y'), STR_TO_DATE('13-08-2020', '%d-%m-%Y'), 1, 'Castellano', 4, 76, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362265.gif', 4);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION,
                   FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA,
                   ID_EDITORIAL) VALUE ('978-84-9181-681-2', 'El naufragio de las civilizaciones', '',
                                        'Cuando los espectaculares avances tecnol??gicos de nuestros d??as nos han facilitado el acceso al conocimiento como nunca hasta ahora, que vivamos m??s y mejor, que el "tercer mundo" se desarrolle..., cuando por primera vez se podr??a conducir a la humanidad hacia una era de libertad y progreso, el mundo parece ir en direcci??n opuesta, hacia la destrucci??n de todo lo conseguido. ??C??mo hemos llegado hasta aqu??? Hace unos a??os, Amin Maalouf nos hablaba de que "nuestras civilizaciones se agotan" en "El desajuste del mundo" y en "Identidades asesinas", y aportaba las razones: la desconfianza hacia el "Otro", la xenofobia, la intolerancia pol??tica y religiosa, el populismo, el individualismo y la insolidaridad del nacionalismo, el racismo... Hoy en d??a ya nos habla directamente de "naufragio inminente". No hay a??oranza de un pasado mejor en sus palabras, solo le preocupa el futuro de esta "??poca desconcertante", el porvenir de las nuevas generaciones, que pueda desaparecer lo que ha dado sentido a la aventura humana. Tampoco se deja llevar por el pesimismo ni quiere predicar el desaliento, solo hace una llamada l??cida a la responsabilidad colectiva, dejando entreabierta la puerta de la esperanza a que el mundo vuelva a orientarse, ya que como escribi?? en su novela "Los desorientados": "M??s vale equivocarse en la esperanza que acertar en la desesperaci??n".',
                                        131, 'Papel', STR_TO_DATE('03-09-2020',
                                        '%d-%m-%Y'), STR_TO_DATE('07-04-2021', '%d-%m-%Y'), STR_TO_DATE('24-05-2019', '%d-%m-%Y'), 1, 'Castellano', 1, 70, 'https://static.cegal.es/imagenes/marcadas/9788491/978849181681.gif', 4);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION,
                   FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA,
                   ID_EDITORIAL) VALUE ('978-84-1362-100-5', '1080 recetas de cocina', '',
                                        '"1080 recetas de cocina" es un cl??sico por excelencia, y hoy podemos decir que, gracias a ??l, m??s de cinco millones de personas han aprendido, al margen de modas m??s o menos pasajeras, los secretos de la cocina y el bien comer. Reconocido por los grandes',
                                        246, 'Papel', STR_TO_DATE('14-10-2021',
                                        '%d-%m-%Y'), STR_TO_DATE('22-09-2019', '%d-%m-%Y'), STR_TO_DATE('17-03-2021', '%d-%m-%Y'), 1, 'Castellano', 8, 99, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362100.gif', 4);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION,
                   FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA,
                   ID_EDITORIAL) VALUE ('978-84-206-7415-5', 'Mi familia y otros animales', '',
                                        'Gerald Durrell combina en sus libros el retrato de gentes y lugares, la autobiograf??a y un insuperable sentido del humor. Mi familia y otros animales es sin duda su obra m??s conocida y celebrada. Primera parte de su divertida trilog??a de Corf??, que prosigue con Bichos y dem??s parientes y El jard??n de los dioses, la obra nos presenta una ??gil y graciosa galer??a de personajes, como Larry -Lawrence Durrell, el futuro autor del ??Cuarteto de Alejandr??a??- y sus estrafalarias amistades, mam?? Durrell y su inagotable sentido com??n, o Spiro, el corfuano angloparlante, junto con toda una serie de animales retratados como s??lo puede hacerlo quien a lo largo de toda una vida los ha considerado con inteligencia y ternura.',
                                        212, 'Papel', STR_TO_DATE('01-03-2020',
                                        '%d-%m-%Y'), STR_TO_DATE('06-11-2019', '%d-%m-%Y'), STR_TO_DATE('29-04-2020', '%d-%m-%Y'), 1, 'Castellano', 0, 46, 'https://static.cegal.es/imagenes/marcadas/9788420/978842067415.gif', 1);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION,
                   FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA,
                   ID_EDITORIAL) VALUE ('978-84-1362-059-6', 'El cerebro', '',
                                        'EL CEREBRO presenta al lector, de manera inteligente y asequible, y tambi??n con mucho humor pero sin caer en la divulgaci??n trivial, todos los aspectos relacionados con el cerebro humano: percepci??n, inteligencia, consciencia, pensamiento, memoria, aprendizaje, creatividad, voluntad, sociabilidad, sue??o, recuperaci??n. Este conjunto de temas es tratado de manera amena mediante ejemplos, actividades, infograf??as y esquemas. Al finalizar cada bloque se ofrecen experimentos ingeniosos y fascinantes que ayudan al lector a poner en pr??ctica c??mo funciona el cerebro, el dispositivo de procesamiento de informaci??n m??s complejo del universo. Divulgaci??n cient??fica de calidad de la mano de New Scientist, el semanario sobre temas cient??ficos m??s vendido en el mundo, que acompa??a al lector en un viaje a trav??s de toda la variedad de peculiaridades del cerebro humano.',
                                        297, 'Papel', STR_TO_DATE('07-07-2021',
                                        '%d-%m-%Y'), STR_TO_DATE('30-05-2021', '%d-%m-%Y'), STR_TO_DATE('07-01-2020', '%d-%m-%Y'), 1, 'Castellano', 20, 77, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362059.gif', 2);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION,
                   FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA,
                   ID_EDITORIAL) VALUE ('978-84-1362-239-2', 'Algo de feminismo y otros escritos combativos', '',
                                        'Conocida durante mucho tiempo principalmente como la introductora de la corriente naturalista en Espa??a por medio de sus novelas "Los Pazos de Ulloa" y "La madre naturaleza", Emilia Pardo Baz??n (1851-1921) fue una mujer a la vanguardia de su ??poca, beligerante defensora del valor de la mujer. ??La clave de nuestra regeneraci??n -declaraba en 1914, hace m??s de un siglo, a El Caballero Audaz- est?? en la mujer, en su instrucci??n, en su personalidad, en su conciencia. Espa??a se explica por la situaci??n de sus mujeres, por el sarracenismo de sus hombres??. La presente selecci??n re??ne los textos principales en que la autora dio a conocer sus ideas y su parecer acerca de la situaci??n subalterna de la mujer en Espa??a, valor??ndola como una de las grandes r??moras del pa??s. Por desgracia, sus textos no son hoy material de museo, sino que, leyendo entre l??neas y siendo conscientes de los mecanismos de la sociedad actual, en muchos sentidos siguen teniendo plena vigencia. Selecci??n e introducci??n de Marisa Sotelo V??zquez',
                                        94, 'Papel', STR_TO_DATE('15-12-2020',
                                        '%d-%m-%Y'), STR_TO_DATE('11-08-2019', '%d-%m-%Y'), STR_TO_DATE('07-08-2020', '%d-%m-%Y'), 1, 'Castellano', 4, 92, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362239.gif', 3);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION,
                   FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA,
                   ID_EDITORIAL) VALUE ('978-84-1362-169-2', 'El Horla. Cuentos fant??sticos y de horror', '',
                                        'Si bien fueron sus espl??ndidas novelas, como "Bel Ami" o "Fuerte como la muerte", las que valieron en su d??a a Guy de Maupassant (1850-1893) fama y dinero, no es menos cierto que su regular labor como cuentista en publicaciones de la ??poca ha aportado no poco a consolidar su renombre en tiempos posteriores. "El Horla: Cuentos fant??sticos y de horror" agrupa los mejores de sus relatos entre los que se podr??a decir concebidos para provocar una desaz??n en el lector. Sea su ingrediente principal el misterio, la locura, lo irracional, el miedo o la obsesi??n de la soledad, o bien el sexo, la violencia y la sangre, propia o ajena, todos ellos giran, en suma, en torno a un incidente de car??cter extraordinario por inexplicable o an??malo, por arrebatado o por atroz. Traducci??n de Esther Ben??tez',
                                        176, 'Papel', STR_TO_DATE('22-08-2021',
                                        '%d-%m-%Y'), STR_TO_DATE('06-08-2019', '%d-%m-%Y'), STR_TO_DATE('12-07-2019', '%d-%m-%Y'), 1, 'Castellano', 2, 71, 'https://static.cegal.es/imagenes/marcadas/9788413/978841362169.gif', 4);
INSERT INTO LIBRO (ISBN, TITULO, SUBTITULO, SINOPSIS, PAGINAS, FORMATO, FECHA_PUBLICACION, FECHA_EDICION,
                   FECHA_DISPONIBLE, VISIBLE, IDIOMA, STOCK, PRECIO, NOMBRE_PORTADA,
                   ID_EDITORIAL) VALUE ('978-84-1362-305-4', 'La b??squeda del Santo Grial', '',
                                        'Obra perteneciente al ciclo de leyendas art??ricas conocido como la Vulgata, en La b??squeda del Santo Grial ciento cincuenta caballeros de la Mesa Redonda parten de Camelot dispuestos a arrostrar todo tipo de peligros con tal de recuperar el c??liz llevado a Inglaterra por los descendientes de Jos?? de Arimatea y conservado en el castillo de Corbenic. De ellos, sin embargo, s??lo tres -Boores, Perceval y Galaz- conseguir??n coronar la aventura, y de ??stos s??lo uno, Galaz, modelo de caballero en quien el ascetismo y la castidad se funden con la ayuda divina, llegar?? a conocer los secretos del Santo Grial.',
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
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), 'Me gust?? mucho', 4, 3, 0, 15, 4);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('13-04-2021', '%d-%m-%Y'), 'Una decepci??n', 2, 3, 0, 33, 5);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('01-05-2021', '%d-%m-%Y'), 'Horrible', 1, 3, 0, 6, 6);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('11-05-2021', '%d-%m-%Y'), '', 5, 3, 1, 16, 7);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('29-04-2021', '%d-%m-%Y'), '', 3, 3, 1, 52, 8);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('19-04-2021', '%d-%m-%Y'), '', 4, 3, 1, 41, 9);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('11-05-2021', '%d-%m-%Y'), 'Bien', 3, 3, 1, 34, 10);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('10-05-2021', '%d-%m-%Y'), 'Genial', 5, 3, 1, 29, 11);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('11-05-2021', '%d-%m-%Y'), 'Me gust?? mucho', 4, 1, 0, 35, 2);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('02-05-2021', '%d-%m-%Y'), 'Una decepci??n', 2, 2, 1, 53, 3);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('10-05-2021', '%d-%m-%Y'), 'Horrible', 1, 2, 1, 44, 4);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('11-05-2021', '%d-%m-%Y'), '', 5, 3, 1, 32, 5);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('18-04-2021', '%d-%m-%Y'), '', 3, 3, 1, 46, 6);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('26-04-2021', '%d-%m-%Y'), '', 4, 3, 0, 28, 7);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('18-04-2021', '%d-%m-%Y'), 'Bien', 3, 3, 0, 51, 8);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('11-05-2021', '%d-%m-%Y'), 'Genial', 5, 3, 0, 47, 9);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('18-04-2021', '%d-%m-%Y'), 'Me gust?? mucho', 4, 3, 0, 17, 10);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('19-04-2021', '%d-%m-%Y'), 'Una decepci??n', 2, 3, 0, 18, 11);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), 'Horrible', 1, 3, 0, 55, 2);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('21-04-2021', '%d-%m-%Y'), '', 5, 3, 1, 8, 3);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('04-05-2021', '%d-%m-%Y'), '', 3, 3, 1, 3, 4);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('05-05-2021', '%d-%m-%Y'), '', 4, 1, 1, 22, 5);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('09-05-2021', '%d-%m-%Y'), 'Bien', 3, 2, 1, 19, 6);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('06-05-2021', '%d-%m-%Y'), 'Me gust?? mucho', 4, 3, 0, 7, 8);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('10-05-2021', '%d-%m-%Y'), 'Una decepci??n', 2, 3, 1, 56, 9);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('13-04-2021', '%d-%m-%Y'), 'Horrible', 1, 3, 1, 58, 10);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('10-05-2021', '%d-%m-%Y'), '', 5, 3, 1, 59, 11);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), '', 3, 3, 1, 11, 2);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('29-04-2021', '%d-%m-%Y'), '', 4, 3, 0, 1, 3);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('20-04-2021', '%d-%m-%Y'), 'Bien', 3, 3, 0, 20, 4);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('10-05-2021', '%d-%m-%Y'), 'Genial', 5, 3, 0, 2, 5);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('09-05-2021', '%d-%m-%Y'), 'Me gust?? mucho', 4, 3, 0, 4, 6);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('05-05-2021', '%d-%m-%Y'), 'Una decepci??n', 2, 3, 0, 5, 7);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), 'Horrible', 1, 1, 0, 24, 8);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('18-04-2021', '%d-%m-%Y'), '', 5, 2, 1, 14, 9);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), '', 3, 2, 1, 13, 10);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('26-04-2021', '%d-%m-%Y'), '', 4, 3, 1, 9, 11);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('15-04-2021', '%d-%m-%Y'), 'Bien', 3, 3, 1, 48, 2);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('21-04-2021', '%d-%m-%Y'), 'Genial', 5, 3, 1, 38, 3);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('02-05-2021', '%d-%m-%Y'), 'Me gust?? mucho', 4, 3, 0, 49, 4);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('25-04-2021', '%d-%m-%Y'), 'Una decepci??n', 2, 3, 1, 10, 5);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('16-04-2021', '%d-%m-%Y'), 'Horrible', 1, 3, 1, 50, 6);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('25-04-2021', '%d-%m-%Y'), '', 5, 3, 1, 36, 7);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('08-05-2021', '%d-%m-%Y'), '', 3, 3, 1, 12, 8);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('19-04-2021', '%d-%m-%Y'), '', 4, 3, 0, 39, 9);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('10-05-2021', '%d-%m-%Y'), 'Bien', 3, 3, 0, 21, 10);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('02-05-2021', '%d-%m-%Y'), 'Genial', 5, 1, 0, 23, 11);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('09-05-2021', '%d-%m-%Y'), 'Me gust?? mucho', 4, 2, 0, 25, 2);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), 'Una decepci??n', 2, 2, 0, 26, 3);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), 'Horrible', 1, 3, 0, 27, 4);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('24-04-2021', '%d-%m-%Y'), '', 5, 3, 1, 30, 5);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('18-04-2021', '%d-%m-%Y'), '', 3, 3, 1, 45, 6);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('22-04-2021', '%d-%m-%Y'), '', 4, 3, 1, 31, 7);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('30-04-2021', '%d-%m-%Y'), 'Bien', 3, 3, 1, 37, 8);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('20-04-2021', '%d-%m-%Y'), 'Genial', 5, 3, 1, 40, 9);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('02-05-2021', '%d-%m-%Y'), 'Me gust?? mucho', 4, 3, 0, 43, 10);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('11-05-2021', '%d-%m-%Y'), 'Una decepci??n', 2, 3, 1, 42, 11);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('25-04-2021', '%d-%m-%Y'), 'Horrible', 1, 3, 1, 30, 2);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('27-04-2021', '%d-%m-%Y'), '', 3, 1, 1, 39, 4);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('15-04-2021', '%d-%m-%Y'), '', 4, 2, 0, 58, 5);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('27-04-2021', '%d-%m-%Y'), 'Bien', 3, 2, 0, 18, 6);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('13-04-2021', '%d-%m-%Y'), 'Genial', 5, 3, 0, 43, 7);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('30-04-2021', '%d-%m-%Y'), 'Me gust?? mucho', 4, 3, 0, 3, 8);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('13-04-2021', '%d-%m-%Y'), 'Una decepci??n', 2, 3, 0, 35, 9);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('08-05-2021', '%d-%m-%Y'), 'Genial', 5, 3, 1, 28, 5);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('15-04-2021', '%d-%m-%Y'), 'Horrible', 1, 2, 1, 36, 8);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('10-05-2021', '%d-%m-%Y'), '', 5, 2, 1, 1, 9);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('14-04-2021', '%d-%m-%Y'), '', 3, 3, 1, 2, 10);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('20-04-2021', '%d-%m-%Y'), '', 4, 3, 0, 4, 11);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('18-04-2021', '%d-%m-%Y'), 'Genial', 5, 3, 0, 33, 3);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('22-04-2021', '%d-%m-%Y'), 'Me gust?? mucho', 4, 3, 0, 45, 4);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('14-04-2021', '%d-%m-%Y'), 'Una decepci??n', 2, 3, 0, 7, 5);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('07-05-2021', '%d-%m-%Y'), '', 5, 3, 1, 6, 7);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), '', 3, 3, 1, 22, 8);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), '', 4, 3, 1, 13, 9);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('29-04-2021', '%d-%m-%Y'), 'Bien', 3, 1, 1, 57, 10);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), 'Genial', 5, 2, 1, 20, 11);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), 'Me gust?? mucho', 4, 2, 0, 56, 2);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('17-04-2021', '%d-%m-%Y'), 'Una decepci??n', 2, 3, 1, 14, 3);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('25-04-2021', '%d-%m-%Y'), 'Horrible', 1, 3, 1, 41, 4);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('14-04-2021', '%d-%m-%Y'), '', 5, 3, 1, 52, 5);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('15-04-2021', '%d-%m-%Y'), '', 3, 3, 1, 8, 6);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('17-04-2021', '%d-%m-%Y'), '', 4, 3, 0, 24, 7);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), 'Bien', 3, 3, 0, 47, 8);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('11-05-2021', '%d-%m-%Y'), 'Genial', 5, 3, 0, 37, 9);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('02-05-2021', '%d-%m-%Y'), 'Me gust?? mucho', 4, 3, 0, 9, 10);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('09-05-2021', '%d-%m-%Y'), 'Una decepci??n', 2, 3, 0, 11, 11);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('07-05-2021', '%d-%m-%Y'), 'Horrible', 1, 3, 0, 38, 2);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), '', 5, 1, 1, 21, 3);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), '', 3, 2, 1, 10, 4);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('29-04-2021', '%d-%m-%Y'), '', 4, 2, 1, 29, 5);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), 'Bien', 3, 3, 1, 31, 6);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), 'Genial', 5, 3, 1, 32, 7);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('17-04-2021', '%d-%m-%Y'), 'Me gust?? mucho', 4, 3, 0, 48, 8);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('25-04-2021', '%d-%m-%Y'), 'Una decepci??n', 2, 3, 1, 44, 9);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('14-04-2021', '%d-%m-%Y'), 'Horrible', 1, 3, 1, 15, 10);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('15-04-2021', '%d-%m-%Y'), '', 5, 3, 1, 16, 11);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('17-04-2021', '%d-%m-%Y'), '', 3, 3, 1, 53, 2);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), '', 4, 3, 0, 49, 3);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('11-05-2021', '%d-%m-%Y'), 'Bien', 3, 3, 0, 40, 4);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('02-05-2021', '%d-%m-%Y'), 'Genial', 5, 3, 0, 42, 5);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('09-05-2021', '%d-%m-%Y'), 'Me gust?? mucho', 4, 1, 0, 23, 6);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('07-05-2021', '%d-%m-%Y'), 'Una decepci??n', 2, 2, 0, 50, 7);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('12-04-2021', '%d-%m-%Y'), '', 5, 3, 1, 12, 9);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('29-04-2021', '%d-%m-%Y'), '', 3, 3, 1, 54, 10);
INSERT INTO COMENTARIO (FECHA_COMENTARIO, COMENTARIO, ESTRELLAS, ID_ESTADO, ANONIMO, ID_LIBRO, ID_USUARIO) VALUES (STR_TO_DATE('28-04-2021', '%d-%m-%Y'), '', 4, 3, 1, 17, 11);
