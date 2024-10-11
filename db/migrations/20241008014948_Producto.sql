-- migrate:up
CREATE TABLE Producto (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20),
    codigo VARCHAR(20),
    precio FLOAT,
    foto VARCHAR(20),
    descripcion VARCHAR(100),
    especificaciones VARCHAR(80),
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