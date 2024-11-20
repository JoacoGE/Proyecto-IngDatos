-- migrate:up
INSERT INTO Sedes (id, nombre, direccion, idDistrito) VALUES (1, 'Sede Central Lima', 'Av. Arequipa 1234', 1);
INSERT INTO Sedes (id, nombre, direccion, idDistrito) VALUES (2, 'Sede Miraflores', 'Av. Larco 456', 1);
INSERT INTO Sedes (id, nombre, direccion, idDistrito) VALUES (3, 'Sede San Isidro', 'Av. Javier Prado 789', 1);
INSERT INTO Sedes (id, nombre, direccion, idDistrito) VALUES (4, 'Sede Surco', 'Av. Primavera 101', 1);
INSERT INTO Sedes (id, nombre, direccion, idDistrito) VALUES (5, 'Sede Magdalena', 'Av. Brasil 234', 1);
INSERT INTO Sedes (id, nombre, direccion, idDistrito) VALUES (6, 'Sede Barranco', 'Jr. Unión 567', 1);
INSERT INTO Sedes (id, nombre, direccion, idDistrito) VALUES (7, 'Sede San Miguel', 'Calle La Marina 890', 1);
INSERT INTO Sedes (id, nombre, direccion, idDistrito) VALUES (8, 'Sede Chorrillos', 'Av. Huaylas 345', 1);
INSERT INTO Sedes (id, nombre, direccion, idDistrito) VALUES (9, 'Sede La Molina', 'Av. Melgarejo 678', 1);
INSERT INTO Sedes (id, nombre, direccion, idDistrito) VALUES (10, 'Sede Los Olivos', 'Av. Universitaria 101', 1);
INSERT INTO Sedes (id, nombre, direccion, idDistrito) VALUES (11, 'Sede Arequipa', 'Calle Mercaderes 202', 2);
INSERT INTO Sedes (id, nombre, direccion, idDistrito) VALUES (12, 'Sede Cuzco', 'Av. Sol 303', 3);
INSERT INTO Sedes (id, nombre, direccion, idDistrito) VALUES (13, 'Sede Trujillo', 'Av. España 404', 4);
INSERT INTO Sedes (id, nombre, direccion, idDistrito) VALUES (14, 'Sede Piura', 'Av. Grau 505', 5);
INSERT INTO Sedes (id, nombre, direccion, idDistrito) VALUES (15, 'Sede Lambayeque', 'Calle San José 606', 6);
INSERT INTO Sedes (id, nombre, direccion, idDistrito) VALUES (16, 'Sede Huancayo', 'Av. Huancayo 707', 7);
INSERT INTO Sedes (id, nombre, direccion, idDistrito) VALUES (17, 'Sede Ica', 'Calle Arenales 808', 8);
INSERT INTO Sedes (id, nombre, direccion, idDistrito) VALUES (18, 'Sede Puno', 'Av. Titicaca 909', 9);
INSERT INTO Sedes (id, nombre, direccion, idDistrito) VALUES (19, 'Sede Huaraz', 'Av. Huascarán 100', 10);

-- migrate:down

DELETE FROM Sedes;