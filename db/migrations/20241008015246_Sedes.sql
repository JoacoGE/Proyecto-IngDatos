-- migrate:up
CREATE TABLE Sedes (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(100),
    direccion VARCHAR(20),
    idDistrito INTEGER NOT NULL,
    idTipoEntrega INTEGER NOT NULL,
    FOREIGN KEY (idDistrito) REFERENCES Distrito(id),
    FOREIGN KEY (idTipoEntrega) REFERENCES TipoEntrega(id)
);


-- migrate:down

DROP TABLE Sedes;