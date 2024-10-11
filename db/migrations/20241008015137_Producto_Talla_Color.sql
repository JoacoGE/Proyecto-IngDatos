-- migrate:up
CREATE TABLE Producto_Talla_Color (
    id INTEGER NOT NULL PRIMARY KEY ,
    idProducto INTEGER NOT NULL,
    idTalla INTEGER NOT NULL,
    idColor INTEGER NOT NULL,
    FOREIGN KEY (idProducto) REFERENCES Producto(id),
    FOREIGN KEY (idTalla) REFERENCES Talla(id),
    FOREIGN KEY (idColor) REFERENCES Color(id)
);

-- migrate:down

DROP TABLE Producto_Talla_Color;
