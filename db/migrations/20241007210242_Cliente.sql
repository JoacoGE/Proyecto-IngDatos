-- migrate:up
CREATE TABLE Clientes (
  id INTEGER NOT NULL PRIMARY KEY ,
  nombre VARCHAR(30) NOT NULL,
  apellido VARCHAR(30) NOT NULL,
  DNI VARCHAR(8) NOT NULL,
  correo VARCHAR(20) NOT NULL,
  celular VARCHAR(10) NOT NULL,
  direccion VARCHAR(30) NOT NULL
  
);

-- migrate:down

DROP TABLE Clientes;
