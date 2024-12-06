-- migrate:up
CREATE TABLE Sedes (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(100),
    direccion VARCHAR(200),
    idDistrito INTEGER NOT NULL,
    FOREIGN KEY (idDistrito) REFERENCES Distrito(id)
);


-- migrate:down

DROP TABLE Sedes;