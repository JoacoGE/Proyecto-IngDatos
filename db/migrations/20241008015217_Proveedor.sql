-- migrate:up
CREATE TABLE Proveedor (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(50)
);

-- migrate:down

DROP TABLE Proveedor;
