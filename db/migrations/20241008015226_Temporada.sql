-- migrate:up
CREATE TABLE Temporada (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(50)
);

-- migrate:down

DROP TABLE Temporada;