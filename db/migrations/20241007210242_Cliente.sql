-- migrate:up
CREATE TABLE Clientes (
  id INTEGER NOT NULL PRIMARY KEY ,
  nombre VARCHAR(50) NOT NULL,
  apellido VARCHAR(50) NOT NULL,
  DNI VARCHAR(15) NOT NULL,
  correo VARCHAR(35) NOT NULL,
  celular VARCHAR(25) NOT NULL,
  direccion VARCHAR(70) NOT NULL
  
);

-- migrate:down

DROP TABLE Clientes;
