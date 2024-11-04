-- migrate:up
INSERT INTO Departamento (id, nombre) VALUES (1, 'Lima');
INSERT INTO Departamento (id, nombre) VALUES (2, 'Arequipa');
INSERT INTO Departamento (id, nombre) VALUES (3, 'Cuzco');
INSERT INTO Departamento (id, nombre) VALUES (4, 'La libertad');
INSERT INTO Departamento (id, nombre) VALUES (5, 'Piura');
INSERT INTO Departamento (id, nombre) VALUES (6, 'Lambayeque');
INSERT INTO Departamento (id, nombre) VALUES (7, 'Junín');
INSERT INTO Departamento (id, nombre) VALUES (8, 'Ica');
INSERT INTO Departamento (id, nombre) VALUES (9, 'Puno');
INSERT INTO Departamento (id, nombre) VALUES (10, 'Ancash');

-- migrate:down

DELETE FROM Departamento;