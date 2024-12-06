-- migrate:up
CREATE TABLE Producto (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(50),
    codigo VARCHAR(50),
    precio FLOAT,
    foto VARCHAR(50),
    descripcion VARCHAR(200),
    especificaciones VARCHAR(200),
    idMarca INTEGER NOT NULL,
    idTipoProducto INTEGER NOT NULL,
    idProveedor INTEGER NOT NULL,
    idTemporada INTEGER NOT NULL,
    idGenero INTEGER NOT NULL,
    FOREIGN KEY (idTipoProducto) REFERENCES TipoProducto(id),
    FOREIGN KEY (idMarca) REFERENCES Marca(id),
    FOREIGN KEY (idProveedor) REFERENCES Proveedor(id),
    FOREIGN KEY (idTemporada) REFERENCES Temporada(id), 
    FOREIGN KEY (idGenero) REFERENCES Genero(id)
);
-- migrate:down
DROP TABLE Producto;