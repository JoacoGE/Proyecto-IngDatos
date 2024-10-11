-- migrate:up
CREATE TABLE Talla (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20)
);

-- migrate:down

DROP TABLE Talla;
