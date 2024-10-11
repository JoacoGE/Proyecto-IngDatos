-- migrate:up
CREATE TABLE Marca (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20)
);

-- migrate:down
DROP TABLE Marca;

