CREATE OR REPLACE FUNCTION menor_precio(preciomax NUMBER)
RETURN VARCHAR2 IS
    CURSOR productos IS
        SELECT Producto.nombre AS nombreP, Producto.precio AS precioP 
        FROM Producto 
        WHERE Producto.precio < preciomax;
BEGIN
    FOR producto IN productos LOOP
        DBMS_OUTPUT.PUT_LINE('Producto: ' || producto.nombreP || ' | Precio: ' || producto.precioP);
    END LOOP;

    RETURN 'Productos listados correctamente.';
END menor_precio;
/