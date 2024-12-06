-- migrate:up
CREATE TABLE Estado (
    id INTEGER NOT NULL PRIMARY KEY ,
    nombre VARCHAR(50)
);
-- migrate:down
DROP TABLE Estado;