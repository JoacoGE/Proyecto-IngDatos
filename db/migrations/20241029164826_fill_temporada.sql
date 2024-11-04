-- migrate:up
INSERT INTO Temporada (id, nombre) VALUES (1, 'Primavera-verano');
INSERT INTO Temporada (id, nombre) VALUES (2, 'Toda temporada');
INSERT INTO Temporada (id, nombre) VALUES (3, 'Otoño-invierno');
INSERT INTO Temporada (id, nombre) VALUES (4, 'Verano 2025');
INSERT INTO Temporada (id, nombre) VALUES (5, 'Primavera 2025');
INSERT INTO Temporada (id, nombre) VALUES (6, 'Todo el año');
INSERT INTO Temporada (id, nombre) VALUES (7, 'Without season');
INSERT INTO Temporada (id, nombre) VALUES (8, 'Invierno 2024');

-- migrate:down

DELETE FROM Temporada;