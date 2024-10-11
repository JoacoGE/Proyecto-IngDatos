CREATE TABLE "schema_migrations" (version varchar(128) primary key);
CREATE TABLE Clientes (
  id INTEGER NOT NULL PRIMARY KEY ,
  nombre VARCHAR(30) NOT NULL,
  apellido VARCHAR(30) NOT NULL,
  DNI VARCHAR(8) NOT NULL,
  correo VARCHAR(20) NOT NULL,
  celular VARCHAR(10) NOT NULL,
  direccion VARCHAR(30) NOT NULL

);
CREATE TABLE Pedido (
    id INTEGER NOT NULL PRIMARY KEY ,
    Nro_pedido INTEGER NOT NULL,
    fecha DATETIME NOT NULL,
    id_Cliente INTEGER NOT NULL,
    id_Estado INTEGER NOT NULL,
    id_Entrega INTEGER NOT NULL,
    FOREIGN KEY (id_Cliente) REFERENCES Cliente (id),
    FOREIGN KEY (id_Estado) REFERENCES Estado (id),
    FOREIGN KEY (id_Entrega) REFERENCES Entrega (id)

);
CREATE TABLE Estado (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20)
);
CREATE TABLE Calificacion (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20),
    idCliente INTEGER NOT NULL,
    idProducto INTEGER NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES Clientes(id),
    FOREIGN KEY (idProducto) REFERENCES Producto(id)
);
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
CREATE TABLE TipoProducto (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20)
);
CREATE TABLE Marca (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20)
);
CREATE TABLE Producto_Talla_Color (
    id INTEGER NOT NULL PRIMARY KEY ,
    idProducto INTEGER NOT NULL,
    idTalla INTEGER NOT NULL,
    idColor INTEGER NOT NULL,
    FOREIGN KEY (idProducto) REFERENCES Producto(id),
    FOREIGN KEY (idTalla) REFERENCES Talla(id),
    FOREIGN KEY (idColor) REFERENCES Color(id)
);
CREATE TABLE Genero (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20)
);
CREATE TABLE Talla (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20)
);
CREATE TABLE Color (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20)
);
CREATE TABLE Proveedor (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20)
);
CREATE TABLE Temporada (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20)
);
CREATE TABLE TipoEntrega (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20)
);
CREATE TABLE Sedes (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(100),
    direccion VARCHAR(20),
    idDistrito INTEGER NOT NULL,
    idTipoEntrega INTEGER NOT NULL,
    FOREIGN KEY (idDistrito) REFERENCES Distrito(id),
    FOREIGN KEY (idTipoEntrega) REFERENCES TipoEntrega(id)
);
CREATE TABLE EntregaDomicilio (
    id INTEGER NOT NULL PRIMARY KEY ,
    direccion VARCHAR(20),
    idTipoEntrega INTEGER NOT NULL,
    idDistrito INTEGER NOT NULL,
    FOREIGN KEY (idTipoEntrega) REFERENCES TipoEntrega(id),
    FOREIGN KEY (idDistrito) REFERENCES Distrito(id)
);
CREATE TABLE EntregaRecojo (
    id INTEGER NOT NULL PRIMARY KEY ,
    idTipoEntrega INTEGER NOT NULL,
    idSede INTEGER NOT NULL,
    FOREIGN KEY (idTipoEntrega) REFERENCES TipoEntrega(id),
    FOREIGN KEY (idSede) REFERENCES Sedes(id)
);
CREATE TABLE Distrito (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20),
    idProvincia INTEGER NOT NULL,
    FOREIGN KEY (idProvincia) REFERENCES Provincia(id)
);
CREATE TABLE Provincia (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20),
    idDepartamento INTEGER NOT NULL,
    FOREIGN KEY (idDepartamento) REFERENCES Departamento(id)
);
CREATE TABLE Departamento (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20)
);
CREATE TABLE PedidoProducto (
    id INTEGER NOT NULL PRIMARY KEY ,
    nroPedido INTEGER NOT NULL,
    idProducto INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    FOREIGN KEY (nroPedido) REFERENCES Pedido(id),
    FOREIGN KEY (idProducto) REFERENCES Producto(id)
);
-- Dbmate schema migrations
INSERT INTO "schema_migrations" (version) VALUES
  ('20241007210242'),
  ('20241008011509'),
  ('20241008014918'),
  ('20241008014939'),
  ('20241008014948'),
  ('20241008015105'),
  ('20241008015114'),
  ('20241008015137'),
  ('20241008015152'),
  ('20241008015200'),
  ('20241008015206'),
  ('20241008015217'),
  ('20241008015226'),
  ('20241008015237'),
  ('20241008015246'),
  ('20241008015257'),
  ('20241008015306'),
  ('20241008015314'),
  ('20241008015327'),
  ('20241008015335'),
  ('20241008015410');
