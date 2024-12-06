-- migrate:up

CREATE TABLE Calificacion (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(50),
    idCliente INTEGER NOT NULL,
    idProducto INTEGER NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES Clientes(id),
    FOREIGN KEY (idProducto) REFERENCES Producto(id)
);

-- migrate:down
DROP TABLE Calificacion;