-- Clientes

CREATE TABLE Clientes (
  id INTEGER NOT NULL PRIMARY KEY,
  nombre VARCHAR(30) NOT NULL,
  apellido VARCHAR(30) NOT NULL,
  DNI VARCHAR(8) NOT NULL,
  correo VARCHAR(20) NOT NULL,
  celular VARCHAR(10) NOT NULL,
  direccion VARCHAR(30) NOT NULL

);

ALTER TABLE Clientes ADD (
  CONSTRAINT Clientes_pk PRIMARY KEY (ID));

CREATE SEQUENCE Clientes_seq START WITH 1;

CREATE OR REPLACE TRIGGER Clientes_pk 
BEFORE INSERT ON Clientes 
FOR EACH ROW

BEGIN
  SELECT Clientes_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/

-- Estado

CREATE TABLE Estado (
    id INTEGER NOT NULL PRIMARY KEY,
    nombre VARCHAR(20)
);

ALTER TABLE Estado ADD (
  CONSTRAINT Estado_pk PRIMARY KEY (ID));

CREATE SEQUENCE Estado_seq START WITH 1;

CREATE OR REPLACE TRIGGER Estado_pk 
BEFORE INSERT ON Estado 
FOR EACH ROW

BEGIN
  SELECT Estado_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/

-- Calificacion

CREATE TABLE Calificacion (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20),
    idCliente INTEGER NOT NULL,
    idProducto INTEGER NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES Clientes(id),
    FOREIGN KEY (idProducto) REFERENCES Producto(id)
);

ALTER TABLE Calificacion ADD (
  CONSTRAINT Calificacion_pk PRIMARY KEY (ID));

CREATE SEQUENCE Calificacion_seq START WITH 1;

CREATE OR REPLACE TRIGGER Calificacion_pk 
BEFORE INSERT ON Calificacion 
FOR EACH ROW

BEGIN
  SELECT Calificacion_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/

-- Producto

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

ALTER TABLE Producto ADD (
  CONSTRAINT Producto_pk PRIMARY KEY (ID));

CREATE SEQUENCE Producto_seq START WITH 1;

CREATE OR REPLACE TRIGGER Producto_pk 
BEFORE INSERT ON Producto 
FOR EACH ROW

BEGIN
  SELECT Producto_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/

-- TipoProducto

CREATE TABLE TipoProducto (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20)
);

ALTER TABLE TipoProducto ADD (
  CONSTRAINT TipoProducto_pk PRIMARY KEY (ID));

CREATE SEQUENCE TipoProducto_seq START WITH 1;

CREATE OR REPLACE TRIGGER TipoProducto_pk 
BEFORE INSERT ON TipoProducto 
FOR EACH ROW

BEGIN
  SELECT TipoProducto_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/

CREATE TABLE Marca (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20)
);

ALTER TABLE Marca ADD (
  CONSTRAINT Marca_pk PRIMARY KEY (ID));

CREATE SEQUENCE Marca_seq START WITH 1;

CREATE OR REPLACE TRIGGER Marca_pk 
BEFORE INSERT ON Marca 
FOR EACH ROW

BEGIN
  SELECT Marca_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/


CREATE TABLE Producto_Talla_Color (
    id INTEGER NOT NULL PRIMARY KEY ,
    idProducto INTEGER NOT NULL,
    idTalla INTEGER NOT NULL,
    idColor INTEGER NOT NULL,
    FOREIGN KEY (idProducto) REFERENCES Producto(id),
    FOREIGN KEY (idTalla) REFERENCES Talla(id),
    FOREIGN KEY (idColor) REFERENCES Color(id)
);

ALTER TABLE Producto_Talla_Color ADD (
  CONSTRAINT Producto_Talla_Color_pk PRIMARY KEY (ID));

CREATE SEQUENCE Producto_Talla_Color_seq START WITH 1;

CREATE OR REPLACE TRIGGER Producto_Talla_Color_pk 
BEFORE INSERT ON Producto_Talla_Color 
FOR EACH ROW

BEGIN
  SELECT Producto_Talla_Color_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/


CREATE TABLE Genero (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20)
);

ALTER TABLE Genero ADD (
  CONSTRAINT Genero_pk PRIMARY KEY (ID));

CREATE SEQUENCE Genero_seq START WITH 1;

CREATE OR REPLACE TRIGGER Genero_pk 
BEFORE INSERT ON Genero 
FOR EACH ROW

BEGIN
  SELECT Genero_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/


CREATE TABLE Talla (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20)
);

ALTER TABLE Talla ADD (
  CONSTRAINT Talla_pk PRIMARY KEY (ID));

CREATE SEQUENCE Talla_seq START WITH 1;

CREATE OR REPLACE TRIGGER Talla_pk 
BEFORE INSERT ON Talla 
FOR EACH ROW

BEGIN
  SELECT Talla_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/


CREATE TABLE Color (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20)
);

ALTER TABLE Color ADD (
  CONSTRAINT Color_pk PRIMARY KEY (ID));

CREATE SEQUENCE Color_seq START WITH 1;

CREATE OR REPLACE TRIGGER Color_pk 
BEFORE INSERT ON Color 
FOR EACH ROW

BEGIN
  SELECT Color_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/


CREATE TABLE Proveedor (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20)
);

ALTER TABLE Proveedor ADD (
  CONSTRAINT Proveedor_pk PRIMARY KEY (ID));

CREATE SEQUENCE Proveedor_seq START WITH 1;

CREATE OR REPLACE TRIGGER Proveedor_pk 
BEFORE INSERT ON Proveedor 
FOR EACH ROW

BEGIN
  SELECT Proveedor_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/


CREATE TABLE Temporada (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20)
);

ALTER TABLE Temporada ADD (
  CONSTRAINT Temporada_pk PRIMARY KEY (ID));

CREATE SEQUENCE Temporada_seq START WITH 1;

CREATE OR REPLACE TRIGGER Temporada_pk 
BEFORE INSERT ON Temporada 
FOR EACH ROW

BEGIN
  SELECT Temporada_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/



CREATE TABLE TipoEntrega (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20)
);

ALTER TABLE TipoEntrega ADD (
  CONSTRAINT TipoEntrega_pk PRIMARY KEY (ID));

CREATE SEQUENCE TipoEntrega_seq START WITH 1;

CREATE OR REPLACE TRIGGER TipoEntrega_pk 
BEFORE INSERT ON TipoEntrega 
FOR EACH ROW

BEGIN
  SELECT TipoEntrega_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/


CREATE TABLE Sedes (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(100),
    direccion VARCHAR(20),
    idDistrito INTEGER NOT NULL,
    FOREIGN KEY (idDistrito) REFERENCES Distrito(id)
);

ALTER TABLE Sedes ADD (
  CONSTRAINT Sedes_pk PRIMARY KEY (ID));

CREATE SEQUENCE Sedes_seq START WITH 1;

CREATE OR REPLACE TRIGGER Sedes_pk 
BEFORE INSERT ON Sedes 
FOR EACH ROW

BEGIN
  SELECT Sedes_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/



CREATE TABLE EntregaDomicilio (
    id INTEGER NOT NULL PRIMARY KEY ,
    direccion VARCHAR(20),
    idTipoEntrega INTEGER NOT NULL,
    idDistrito INTEGER NOT NULL,
    FOREIGN KEY (idTipoEntrega) REFERENCES TipoEntrega(id),
    FOREIGN KEY (idDistrito) REFERENCES Distrito(id)
);

ALTER TABLE EntregaDomicilio ADD (
  CONSTRAINT EntregaDomicilio_pk PRIMARY KEY (ID));

CREATE SEQUENCE EntregaDomicilio_seq START WITH 1;

CREATE OR REPLACE TRIGGER EntregaDomicilio_pk 
BEFORE INSERT ON EntregaDomicilio 
FOR EACH ROW

BEGIN
  SELECT EntregaDomicilio_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/



CREATE TABLE EntregaRecojo (
    id INTEGER NOT NULL PRIMARY KEY ,
    idTipoEntrega INTEGER NOT NULL,
    idSede INTEGER NOT NULL,
    FOREIGN KEY (idTipoEntrega) REFERENCES TipoEntrega(id),
    FOREIGN KEY (idSede) REFERENCES Sedes(id)
);

ALTER TABLE EntregaRecojo ADD (
  CONSTRAINT EntregaRecojo_pk PRIMARY KEY (ID));

CREATE SEQUENCE EntregaRecojo_seq START WITH 1;

CREATE OR REPLACE TRIGGER EntregaRecojo_pk 
BEFORE INSERT ON EntregaRecojo 
FOR EACH ROW

BEGIN
  SELECT EntregaRecojo_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/


CREATE TABLE Distrito (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20),
    idProvincia INTEGER NOT NULL,
    FOREIGN KEY (idProvincia) REFERENCES Provincia(id)
);

ALTER TABLE Distrito ADD (
  CONSTRAINT Distrito_pk PRIMARY KEY (ID));

CREATE SEQUENCE Distrito_seq START WITH 1;

CREATE OR REPLACE TRIGGER Distrito_pk 
BEFORE INSERT ON Distrito 
FOR EACH ROW

BEGIN
  SELECT Distrito_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/


CREATE TABLE Provincia (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20),
    idDepartamento INTEGER NOT NULL,
    FOREIGN KEY (idDepartamento) REFERENCES Departamento(id)
);

ALTER TABLE Provincia ADD (
  CONSTRAINT Provincia_pk PRIMARY KEY (ID));

CREATE SEQUENCE Provincia_seq START WITH 1;

CREATE OR REPLACE TRIGGER Provincia_pk 
BEFORE INSERT ON Provincia 
FOR EACH ROW

BEGIN
  SELECT Provincia_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/


CREATE TABLE Departamento (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20)
);

ALTER TABLE Departamento ADD (
  CONSTRAINT Departamento_pk PRIMARY KEY (ID));

CREATE SEQUENCE Departamento_seq START WITH 1;

CREATE OR REPLACE TRIGGER Departamento_pk 
BEFORE INSERT ON Departamento 
FOR EACH ROW

BEGIN
  SELECT Departamento_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/



CREATE TABLE PedidoProductoTallaColor (
    id INTEGER NOT NULL PRIMARY KEY ,
    idPedido INTEGER NOT NULL,
    idProductoTallaColor INTEGER NOT NULL,
    cantidad INTEGER NOT NULL,
    FOREIGN KEY (idPedido) REFERENCES Pedido(id),
    FOREIGN KEY (idProductoTallaColor) REFERENCES Producto_Talla_Color(id)
);

ALTER TABLE PedidoProductoTallaColor ADD (
  CONSTRAINT PedidoProductoTallaColor_pk PRIMARY KEY (ID));

CREATE SEQUENCE PedidoProductoTallaColor_seq START WITH 1;

CREATE OR REPLACE TRIGGER PedidoProductoTallaColor_pk 
BEFORE INSERT ON PedidoProductoTallaColor 
FOR EACH ROW

BEGIN
  SELECT PedidoProductoTallaColor_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/

CREATE TABLE Pedido (
    id INTEGER NOT NULL PRIMARY KEY ,
    Nro_pedido INTEGER NOT NULL,
    fecha DATE NOT NULL,
    monto FLOAT NOT NULL,
    idCliente INTEGER NOT NULL,
    idEstado INTEGER NOT NULL,
    idEntrega INTEGER NOT NULL,
    FOREIGN KEY (idCliente) REFERENCES Clientes (id),
    FOREIGN KEY (idEstado) REFERENCES Estado (id),
    FOREIGN KEY (idEntrega) REFERENCES TipoEntrega (id)

);

ALTER TABLE Pedido ADD (
  CONSTRAINT Pedido_pk PRIMARY KEY (ID));

CREATE SEQUENCE Pedido_seq START WITH 1;

CREATE OR REPLACE TRIGGER Pedido_pk 
BEFORE INSERT ON Pedido 
FOR EACH ROW

BEGIN
  SELECT Pedido_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/