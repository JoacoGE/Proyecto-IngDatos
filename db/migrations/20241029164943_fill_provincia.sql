-- migrate:up
-- Departamento: Lima
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (1, 'Lima', 1);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (2, 'Barranca', 1);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (3, 'Cañete', 1);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (4, 'Huaral', 1);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (5, 'Huacho', 1);

-- Departamento: Arequipa
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (6, 'Arequipa', 2);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (7, 'Camaná', 2);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (8, 'Caravelí', 2);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (9, 'Islay', 2);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (10, 'Castilla', 2);

-- Departamento: Cuzco
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (11, 'Cuzco', 3);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (12, 'La Convención', 3);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (13, 'Anta', 3);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (14, 'Urubamba', 3);

-- Departamento: La Libertad
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (15, 'Trujillo', 4);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (16, 'Otuzco', 4);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (17, 'Sánchez Carrión', 4);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (18, 'Ascope', 4);

-- Departamento: Piura
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (19, 'Piura', 5);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (20, 'Sullana', 5);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (21, 'Talara', 5);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (22, 'Paita', 5);

-- Departamento: Lambayeque
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (23, 'Chiclayo', 6);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (24, 'Lambayeque', 6);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (25, 'Ferreñafe', 6);

-- Departamento: Junín
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (26, 'Huancayo', 7);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (27, 'Chanchamayo', 7);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (28, 'Tarma', 7);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (29, 'Jauja', 7);

-- Departamento: Ica
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (30, 'Ica', 8);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (31, 'Nazca', 8);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (32, 'Pisco', 8);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (33, 'Chincha', 8);

-- Departamento: Puno
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (34, 'Puno', 9);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (35, 'Juliaca', 9);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (36, 'Azángaro', 9);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (37, 'Huancané', 9);

-- Departamento: Ancash
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (38, 'Huaraz', 10);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (39, 'Casma', 10);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (40, 'Huari', 10);
INSERT INTO Provincia (id, nombre, idDepartamento) VALUES (41, 'Recuay', 10);

-- migrate:down

DELETE FROM Provincia;
