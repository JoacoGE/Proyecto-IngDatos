-- migrate:up
CREATE TABLE TipoProducto (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(50)
);

-- migrate:down
DROP TABLE TipoProducto;


