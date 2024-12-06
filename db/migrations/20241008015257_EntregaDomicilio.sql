-- migrate:up
CREATE TABLE EntregaDomicilio (
    id INTEGER NOT NULL PRIMARY KEY ,
    direccion VARCHAR(200),
    idTipoEntrega INTEGER NOT NULL,
    idDistrito INTEGER NOT NULL,
    FOREIGN KEY (idTipoEntrega) REFERENCES TipoEntrega(id),
    FOREIGN KEY (idDistrito) REFERENCES Distrito(id)
);

-- migrate:down

DROP TABLE EntregaDomicilio;
