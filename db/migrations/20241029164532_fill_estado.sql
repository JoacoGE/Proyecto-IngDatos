-- migrate:up

INSERT INTO Estado (id, nombre) VALUES (1, 'Vacio');
INSERT INTO Estado (id, nombre) VALUES (2, 'Realizado');
INSERT INTO Estado (id, nombre) VALUES (3, 'Finalizado');

-- migrate:down

DELETE FROM Estado;
