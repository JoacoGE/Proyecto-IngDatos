-- migrate:up
CREATE TABLE EntregaRecojo (
    id INTEGER NOT NULL PRIMARY KEY ,
    direccion VARCHAR(20),
    idTipoEntrega INTEGER NOT NULL,
    idSese INTEGER NOT NULL,
    FOREIGN KEY (idTipoEntrega) REFERENCES TipoEntrega(id),
    FOREIGN KEY (idSede) REFERENCES Sedes(id)
);

-- migrate:down

DROP TABLE EntregaRecojo;
