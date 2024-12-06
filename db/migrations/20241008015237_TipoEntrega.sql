-- migrate:up
CREATE TABLE TipoEntrega (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(50)
);

-- migrate:down

DROP TABLE TipoEntrega;
