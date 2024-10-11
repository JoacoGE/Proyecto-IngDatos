-- migrate:up
CREATE TABLE Provincia (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(20),
    idDepartamento INTEGER NOT NULL,
    FOREIGN KEY (idDepartamento) REFERENCES Departamento(id)
);

-- migrate:down

DROP TABLE Provincia;