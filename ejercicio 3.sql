SET SERVEROUTPUT ON;
DECLARE
texto VARCHAR(10):= '&entrada';
salida VARCHAR(10):='';
BEGIN
FOR i IN 1..LENGTH(texto) LOOP
    salida:=salida||SUBSTR(texto,i,1)||'*';
END LOOP;
    DBMS_OUTPUT.PUT_LINE(salida);
END;
/