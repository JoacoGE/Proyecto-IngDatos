-- migrate:up
CREATE TABLE Distrito (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20),
    idProvincia INTEGER NOT NULL,
    FOREIGN KEY (idProvincia) REFERENCES Provincia(id)
);

-- migrate:down

DROP TABLE Distrito;