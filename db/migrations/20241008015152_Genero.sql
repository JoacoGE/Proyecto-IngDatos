-- migrate:up
CREATE TABLE Genero (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(50)
);

-- migrate:down

DROP TABLE Genero;
