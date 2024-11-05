-- migrate:up
INSERT INTO Marca (id, nombre) VALUES (1, 'Gap');
INSERT INTO Marca (id, nombre) VALUES (2, 'Dockers');
INSERT INTO Marca (id, nombre) VALUES (3, 'Tommy Hilifiger');
INSERT INTO Marca (id, nombre) VALUES (4, 'Quicksilver');
INSERT INTO Marca (id, nombre) VALUES (5, 'Adidas');
INSERT INTO Marca (id, nombre) VALUES (6, 'Levis');
INSERT INTO Marca (id, nombre) VALUES (7, 'Sybilla');
INSERT INTO Marca (id, nombre) VALUES (8, 'Dior');
INSERT INTO Marca (id, nombre) VALUES (9, 'Basement');
INSERT INTO Marca (id, nombre) VALUES (10, 'Dunkelvolk');

-- migrate:down

DELETE FROM Marca;
