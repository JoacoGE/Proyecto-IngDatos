CREATE OR REPLACE PROCEDURE revisar_cantidad_marca
IS
    -- Declaración del cursor
    CURSOR productos IS
        SELECT m.nombre AS nombre_marca, COUNT(p.id) AS cantidad_productos
        FROM Producto p
        INNER JOIN Marca m ON p.idMarca = m.id
        GROUP BY m.nombre;
BEGIN
    -- Loop a través del cursor
    FOR producto IN productos LOOP
        DBMS_OUTPUT.PUT_LINE('Marca: ' || producto.nombre_marca);
        DBMS_OUTPUT.PUT_LINE('Cantidad de productos: ' || producto.cantidad_productos);
    END LOOP;
END revisar_cantidad_marca;
/