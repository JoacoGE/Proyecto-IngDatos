-- migrate:up
INSERT INTO Proveedor (id, nombre) VALUES (1, 'Textiles Camones');
INSERT INTO Proveedor (id, nombre) VALUES (2, 'Falabella');
INSERT INTO Proveedor (id, nombre) VALUES (3, 'Texpima');
INSERT INTO Proveedor (id, nombre) VALUES (4, 'Hilandería de Algodón Peruano');
INSERT INTO Proveedor (id, nombre) VALUES (5, 'Tottus');
INSERT INTO Proveedor (id, nombre) VALUES (6, 'MarketPlace');
INSERT INTO Proveedor (id, nombre) VALUES (7, 'Denimtex');
INSERT INTO Proveedor (id, nombre) VALUES (8, 'Tejidos San Jacinto');
INSERT INTO Proveedor (id, nombre) VALUES (9, 'Peruvian Textile Sourcing');
INSERT INTO Proveedor (id, nombre) VALUES (10, 'Alpaca Textile');

-- migrate:down

DELETE FROM Proveedor;