-- migrate:up
INSERT INTO TipoProducto (id, nombre) VALUES (1, 'Polo');
INSERT INTO TipoProducto (id, nombre) VALUES (2, 'Casaca');
INSERT INTO TipoProducto (id, nombre) VALUES (3, 'Camisa');
INSERT INTO TipoProducto (id, nombre) VALUES (4, 'Pantalón');
INSERT INTO TipoProducto (id, nombre) VALUES (5, 'Vestido');
INSERT INTO TipoProducto (id, nombre) VALUES (6, 'Falda');
INSERT INTO TipoProducto (id, nombre) VALUES (7, 'Short');
INSERT INTO TipoProducto (id, nombre) VALUES (8, 'Chompa');
INSERT INTO TipoProducto (id, nombre) VALUES (9, 'Blusa');
INSERT INTO TipoProducto (id, nombre) VALUES (10, 'Chaleco');


-- migrate:down

DELETE FROM TipoProducto;