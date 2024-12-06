-- migrate:up
CREATE TABLE Departamento (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(50)
);

-- migrate:down

DROP TABLE Departamento;