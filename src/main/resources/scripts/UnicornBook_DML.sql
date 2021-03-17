INSERT INTO tipo_entrega (tipo_entrega) VALUES 
('RECOGIDA EN TIENDA'),
('ENVIO A DOMICILIO');

INSERT INTO tipo_operacion (tipo_operacion) VALUES 
('CONSULTA'),
('ENCARGO');

INSERT INTO estado (estado) VALUES 
/*tabla comentarios*/
('PENDIENTE DE MODERAR'), 
('RECHAZADO'), 
('ACEPTADO'), /*tabla encargo*/
/*tabla compra*/
('PENDIENTE DE PAGO'),
('LISTO PARA RECOGIDA'),
('PENDIENTE DE ENVIO'),
('ENVIADO'),
('PROCESADO'),
/*tabla consulta*/
('ENVIADA'),
('ABIERTA'),
('FINALIZADA'),
/*tabla encargo*/
('PENDIENTE RECOGIDA'),
('PENDIENTE DE PROCESAR'),
('FINALIZADO');

INSERT INTO rol (nombre_rol) VALUES 
('ADMIN'),
('CLIENTE'),
('INVITADO');

