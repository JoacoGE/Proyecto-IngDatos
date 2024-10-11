-- migrate:up
CREATE TABLE PedidoProducto (
    id INTEGER NOT NULL PRIMARY KEY ,
    nroPedido INTEGER NOT NULL,
    idProducto INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    FOREIGN KEY (nroPedido) REFERENCES Pedido(id),
    FOREIGN KEY (idProducto) REFERENCES Producto(id)
);

-- migrate:down

DROP TABLE PedidoProducto;
