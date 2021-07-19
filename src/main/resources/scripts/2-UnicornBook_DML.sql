----------------------------------------------------------------
-- Puebla las tablas maestras y crea un usuario administrador --
----------------------------------------------------------------

-- TIPO_ENTREGA
INSERT INTO TIPO_ENTREGA (TIPO_ENTREGA) VALUES ('RECOGIDA EN TIENDA');
INSERT INTO TIPO_ENTREGA (TIPO_ENTREGA) VALUES ('ENVIO A DOMICILIO');

-- TIPO_ENTREGA
INSERT INTO TIPO_OPERACION (TIPO_OPERACION) VALUES ('CONSULTA');
INSERT INTO TIPO_OPERACION (TIPO_OPERACION) VALUES ('ENCARGO');

-- APP_COMPONENTE
INSERT INTO APP_COMPONENTE (NOMBRE) VALUES ('COMENTARIO');
INSERT INTO APP_COMPONENTE (NOMBRE) VALUES ('COMPRA');
INSERT INTO APP_COMPONENTE (NOMBRE) VALUES ('CONSULTA');
INSERT INTO APP_COMPONENTE (NOMBRE) VALUES ('ENCARGO');

-- ESTADO
INSERT INTO ESTADO (ID_COMPONENTE, ESTADO) VALUES (1, 'PENDIENTE DE MODERAR');
INSERT INTO ESTADO (ID_COMPONENTE, ESTADO) VALUES (1,'RECHAZADO');
INSERT INTO ESTADO (ID_COMPONENTE, ESTADO) VALUES (1,'ACEPTADO');
INSERT INTO ESTADO (ID_COMPONENTE, ESTADO) VALUES (2,'PENDIENTE DE PAGO');
INSERT INTO ESTADO (ID_COMPONENTE, ESTADO) VALUES (2,'LISTO PARA RECOGIDA');
INSERT INTO ESTADO (ID_COMPONENTE, ESTADO)
VALUES (2, 'PENDIENTE DE ENVIO');
INSERT INTO ESTADO (ID_COMPONENTE, ESTADO)
VALUES (2, 'ENVIADO');
INSERT INTO ESTADO (ID_COMPONENTE, ESTADO)
VALUES (2, 'PROCESADO');
INSERT INTO ESTADO (ID_COMPONENTE, ESTADO)
VALUES (3, 'ENVIADA');
INSERT INTO ESTADO (ID_COMPONENTE, ESTADO)
VALUES (3, 'ABIERTA');
INSERT INTO ESTADO (ID_COMPONENTE, ESTADO)
VALUES (3, 'FINALIZADA');
INSERT INTO ESTADO (ID_COMPONENTE, ESTADO)
VALUES (4, 'SOLICITADO');
INSERT INTO ESTADO (ID_COMPONENTE, ESTADO)
VALUES (4, 'PENDIENTE DE PROCESAR');
INSERT INTO ESTADO (ID_COMPONENTE, ESTADO)
VALUES (4, 'PENDIENTE RECOGIDA');
INSERT INTO ESTADO (ID_COMPONENTE, ESTADO)
VALUES (4, 'FINALIZADO');
INSERT INTO ESTADO (ID, ESTADO, ID_COMPONENTE)
VALUES (16, 'PAGO ACEPTADO', 2);

-- ROL
INSERT INTO ROL (NOMBRE_ROL)
VALUES ('ADMIN');
INSERT INTO ROL (NOMBRE_ROL)
VALUES ('CLIENTE');

-- TIPO_TAJETA
INSERT INTO TIPO_TARJETA (NOMBRE)
VALUES ('VISA');
INSERT INTO TIPO_TARJETA (NOMBRE)
VALUES ('MASTERCARD');

-- USUARIO
INSERT INTO USUARIO (USUARIO, PASSWORD, EMAIL, DNI, NOMBRE, APELLIDO1, APELLIDO2, TELEFONO1, TELEFONO2, FECHA_NACIMIENTO, ACTIVO) VALUES ('admin', '$2a$10$ZC3t212GhY4EK9PAJV4lB.IImYxl4LIl.yAKsh0gqGezHNrATdpw.', '', '', '', '', '', null, null, STR_TO_DATE('1-1-1099', '%d-%m-%Y'), 1);

-- USUARIO_ROL
INSERT INTO USUARIO_ROL (ID_USUARIO, ID_ROL) VALUES (1, 1);

