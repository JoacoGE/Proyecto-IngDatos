-- migrate:up
CREATE TABLE Marca (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(50)
);

-- migrate:down
DROP TABLE Marca;

