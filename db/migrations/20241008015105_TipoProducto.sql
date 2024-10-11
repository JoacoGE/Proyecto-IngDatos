-- migrate:up
CREATE TABLE TipoProducto (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20)
);

-- migrate:down
DROP TABLE TipoProducto;


