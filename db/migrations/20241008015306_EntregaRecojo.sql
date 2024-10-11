-- migrate:up
CREATE TABLE EntregaRecojo (
    id INTEGER NOT NULL PRIMARY KEY ,
    idTipoEntrega INTEGER NOT NULL,
    idSede INTEGER NOT NULL,
    FOREIGN KEY (idTipoEntrega) REFERENCES TipoEntrega(id),
    FOREIGN KEY (idSede) REFERENCES Sedes(id)
);


-- migrate:down

DROP TABLE EntregaRecojo;
