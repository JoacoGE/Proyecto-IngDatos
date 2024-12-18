CREATE TABLE IF NOT EXISTS "schema_migrations" (version varchar(128) primary key);
CREATE TABLE Clientes (
  id INTEGER NOT NULL PRIMARY KEY ,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  DNI VARCHAR(15) NOT NULL,
  correo VARCHAR(35) NOT NULL,
  celular VARCHAR(25) NOT NULL,
  direccion VARCHAR(70) NOT NULL

);
CREATE TABLE Estado (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(50)
);
CREATE TABLE Calificacion (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(50),
    idCliente INTEGER NOT NULL,
    idProducto INTEGER NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES Clientes(id),
    FOREIGN KEY (idProducto) REFERENCES Producto(id)
);
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
CREATE TABLE TipoProducto (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(50)
);
CREATE TABLE Marca (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(50)
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
    nombre VARCHAR(50)
);
CREATE TABLE Talla (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(50)
);
CREATE TABLE Color (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(50)
);
CREATE TABLE Proveedor (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(50)
);
CREATE TABLE Temporada (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(50)
);
CREATE TABLE TipoEntrega (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(50)
);
CREATE TABLE Sedes (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(100),
    direccion VARCHAR(200),
    idDistrito INTEGER NOT NULL,
    FOREIGN KEY (idDistrito) REFERENCES Distrito(id)
);
CREATE TABLE EntregaDomicilio (
    id INTEGER NOT NULL PRIMARY KEY ,
    direccion VARCHAR(200),
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
    nombre VARCHAR(50),
    idProvincia INTEGER NOT NULL,
    FOREIGN KEY (idProvincia) REFERENCES Provincia(id)
);
CREATE TABLE Provincia (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(50),
    idDepartamento INTEGER NOT NULL,
    FOREIGN KEY (idDepartamento) REFERENCES Departamento(id)
);
CREATE TABLE Departamento (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(50)
);
CREATE TABLE PedidoProductoTallaColor (
    id INTEGER NOT NULL PRIMARY KEY ,
    idPedido INTEGER NOT NULL,
    idProductoTallaColor INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    FOREIGN KEY (idPedido) REFERENCES Pedido(id),
    FOREIGN KEY (idProductoTallaColor) REFERENCES Producto_Talla_Color(id)
);
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
    FOREIGN KEY (idEntrega) REFERENCES TipoEntrega (id)

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
  ('20241008015410'),
  ('20241011172104'),
  ('20241029164139'),
  ('20241029164519'),
  ('20241029164532'),
  ('20241029164539'),
  ('20241029164721'),
  ('20241029164741'),
  ('20241029164754'),
  ('20241029164800'),
  ('20241029164806'),
  ('20241029164810'),
  ('20241029164820'),
  ('20241029164826'),
  ('20241029164833'),
  ('20241029164839'),
  ('20241029164853'),
  ('20241029164923'),
  ('20241029164936'),
  ('20241029164943'),
  ('20241029164953'),
  ('20241029165020'),
  ('20241029165029');
