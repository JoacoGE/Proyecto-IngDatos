-- migrate:up
CREATE TABLE Color (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(50)
);

-- migrate:down

DROP TABLE Color;
