SET SERVEROUTPUT ON

DECLARE
hola VARCHAR(100):='hola como estas yo estoy bien gracias pero no hagan daño a nadie';
vContador INTEGER:= 100;
BEGIN
WHILE vContador > 0 LOOP
DBMS_OUTPUT.PUT_LINE(SUBSTR(hola,vContador,1));
vContador := vContador - 1;
END LOOP;
END;
/