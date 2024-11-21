-- migrate:up

INSERT INTO Estado (id, nombre) VALUES (1, 'Realizado');
INSERT INTO Estado (id, nombre) VALUES (2, 'Finalizado');

-- migrate:down

DELETE FROM Estado;
