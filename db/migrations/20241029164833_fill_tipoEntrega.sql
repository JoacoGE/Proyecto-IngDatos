-- migrate:up
INSERT INTO TipoEntrega (id, nombre) VALUES (1, 'Entrega a domicilio');
INSERT INTO TipoEntrega (id, nombre) VALUES (2, 'Recojo en tienda');

-- migrate:down

DELETE FROM TipoEntrega;