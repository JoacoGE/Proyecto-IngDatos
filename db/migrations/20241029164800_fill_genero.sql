-- migrate:up
INSERT INTO Genero (id, nombre) VALUES (1, 'Masculino');
INSERT INTO Genero (id, nombre) VALUES (2, 'Femenino');
INSERT INTO Genero (id, nombre) VALUES (3, 'Unisex');
INSERT INTO Genero (id, nombre) VALUES (4, 'Niños');
INSERT INTO Genero (id, nombre) VALUES (5, 'Niñas');

-- migrate:down

DELETE FROM Genero;