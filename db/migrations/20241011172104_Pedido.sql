-- migrate:up
CREATE TABLE Pedido (
    id INTEGER NOT NULL PRIMARY KEY ,
    Nro_pedido INTEGER NOT NULL,
    fecha DATETIME NOT NULL,
    monto FLOAT NOT NULL,
    idCliente INTEGER NOT NULL,
    idEstado INTEGER NOT NULL,
    idEntrega INTEGER NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES Clientes (id),
    FOREIGN KEY (idEstado) REFERENCES Estado (id),
    FOREIGN KEY (idEntrega) REFERENCES Entrega (id)
        
);

-- migrate:down

DROP TABLE Pedido;



