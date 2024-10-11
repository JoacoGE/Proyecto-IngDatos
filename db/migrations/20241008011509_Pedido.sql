-- migrate:up
CREATE TABLE Pedido (
    id INTEGER NOT NULL PRIMARY KEY ,
    Nro_pedido INTEGER NOT NULL,
    fecha DATETIME NOT NULL,
    id_Cliente INTEGER NOT NULL,
    id_Estado INTEGER NOT NULL,
    id_Entrega INTEGER NOT NULL,
    FOREIGN KEY (id_Cliente) REFERENCES Clientes (id),
    FOREIGN KEY (id_Estado) REFERENCES Estado (id),
    FOREIGN KEY (id_Entrega) REFERENCES Entrega (id)
        
);

-- migrate:down

DROP TABLE Pedido;