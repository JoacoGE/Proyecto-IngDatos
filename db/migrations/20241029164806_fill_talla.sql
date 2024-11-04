-- migrate:up
INSERT INTO Talla (id, nombre) VALUES (1, 'XS');
INSERT INTO Talla (id, nombre) VALUES (2, 'S');
INSERT INTO Talla (id, nombre) VALUES (3, 'M');
INSERT INTO Talla (id, nombre) VALUES (4, 'L');
INSERT INTO Talla (id, nombre) VALUES (5, 'XL');
INSERT INTO Talla (id, nombre) VALUES (6, 'XXL');
INSERT INTO Talla (id, nombre) VALUES (7, 'XXXL');

INSERT INTO Talla (id, nombre) VALUES (8, '2');
INSERT INTO Talla (id, nombre) VALUES (9, '4');
INSERT INTO Talla (id, nombre) VALUES (10, '6');
INSERT INTO Talla (id, nombre) VALUES (11, '8');
INSERT INTO Talla (id, nombre) VALUES (12, '10');
INSERT INTO Talla (id, nombre) VALUES (13, '12');
INSERT INTO Talla (id, nombre) VALUES (14, '14');
INSERT INTO Talla (id, nombre) VALUES (15, '16');

INSERT INTO Talla (id, nombre) VALUES (16, '28');
INSERT INTO Talla (id, nombre) VALUES (17, '30');
INSERT INTO Talla (id, nombre) VALUES (18, '32');
INSERT INTO Talla (id, nombre) VALUES (19, '34');
INSERT INTO Talla (id, nombre) VALUES (20, '36');
INSERT INTO Talla (id, nombre) VALUES (21, '38');
INSERT INTO Talla (id, nombre) VALUES (22, '40');
INSERT INTO Talla (id, nombre) VALUES (23, '42');
INSERT INTO Talla (id, nombre) VALUES (24, '44');
INSERT INTO Talla (id, nombre) VALUES (25, '46');
INSERT INTO Talla (id, nombre) VALUES (26, '48');

-- migrate:down

DELETE FROM Talla;