SET serveroutput on

DECLARE
    edad NUMBER(3) := 5;
    nombre VARCHAR2(30) := 'Pepe';
    dias INTEGER := 20;
    rpta NUMBER(8,5) := 0;
BEGIN
    DBMS_OUTPUT.PUT_LINE('hola ' || nombre || ', ' || edad);
    DBMS_OUTPUT.PUT_LINE(edad + 10);
    DBMS_OUTPUT.PUT_LINE(edad - 10);
    DBMS_OUTPUT.PUT_LINE(edad * 10);
    DBMS_OUTPUT.PUT_LINE(edad / 10);
    DBMS_OUTPUT.PUT_LINE(MOD(13,3));
    DBMS_OUTPUT.PUT_LINE(13/3);
    DBMS_OUTPUT.PUT_LINE(FLOOR(13/3));
    DBMS_OUTPUT.PUT_LINE(CEIL(13/3));
    rpta := (3*44 + 1) / 3;
    DBMS_OUTPUT.PUT_LINE(rpta);
    IF edad >= 18 THEN
        DBMS_OUTPUT.PUT_LINE(nombre || ' es mayor de edad');
    ELSE
        DBMS_OUTPUT.PUT_LINE(nombre || ' no es mayor de edad');
    END IF;
    edad := edad - 31;
    
    IF edad >= 18 THEN
        DBMS_OUTPUT.PUT_LINE(nombre || ' es mayor de edad');
    ELSIF edad <= 0 THEN
        DBMS_OUTPUT.PUT_LINE(nombre || ' aun no ha nacido');
    ELSE
        DBMS_OUTPUT.PUT_LINE(nombre || ' no es mayor de edad');
    END IF;
END;
/