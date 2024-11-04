-- migrate:up
INSERT INTO Color (id, nombre) VALUES (1, 'Rojo');
INSERT INTO Color (id, nombre) VALUES (2, 'Azul');
INSERT INTO Color (id, nombre) VALUES (3, 'Verde');
INSERT INTO Color (id, nombre) VALUES (4, 'Amarillo');
INSERT INTO Color (id, nombre) VALUES (5, 'Negro');
INSERT INTO Color (id, nombre) VALUES (6, 'Blanco');
INSERT INTO Color (id, nombre) VALUES (7, 'Gris');
INSERT INTO Color (id, nombre) VALUES (8, 'Marrón');
INSERT INTO Color (id, nombre) VALUES (9, 'Rosa');
INSERT INTO Color (id, nombre) VALUES (10, 'Naranja');
INSERT INTO Color (id, nombre) VALUES (11, 'Violeta');
INSERT INTO Color (id, nombre) VALUES (12, 'Celeste');
INSERT INTO Color (id, nombre) VALUES (13, 'Beige');
INSERT INTO Color (id, nombre) VALUES (14, 'Turquesa');
INSERT INTO Color (id, nombre) VALUES (15, 'Fucsia');

-- migrate:down

DELETE FROM Color;