-- migrate:up
CREATE TABLE PedidoProductoTallaColor (
    id INTEGER NOT NULL PRIMARY KEY ,
    idPedido INTEGER NOT NULL,
    idProductoTallaColor INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    FOREIGN KEY (idPedido) REFERENCES Pedido(id),
    FOREIGN KEY (idProductoTallaColor) REFERENCES Producto_Talla_Color(id)
);

-- migrate:down

DROP TABLE PedidoProducto;
