SET SERVEROUTPUT ON

DECLARE
    resultado NUMBER(10):=0;
    Ltabla NUMBER:=0;
    Lnumero NUMBER:=0;
    
BEGIN
    For tabla IN 1..10 LOOP
        DBMS_OUTPUT.PUT_LINE('***********************************************');
        DBMS_OUTPUT.PUT_LINE('*   TABLA DEL '|| tabla || '     *');
        FOR numero IN 1..10 LOOP
            resultado:=tabla*numero;
            DBMS_OUTPUT.PUT_LINE(resultado);
        
        END LOOP;
        DBMS_OUTPUT.PUT_LINE('***********************************************');
    END LOOP;
    WHILE Ltabla <= 10 LOOP
        DBMS_OUTPUT.PUT_LINE('***********************************************');
        DBMS_OUTPUT.PUT_LINE('*   TABLA DEL '|| Ltabla || '     *');
        WHILE Lnumero < 10 LOOP
            resultado:=Ltabla*Lnumero;
            DBMS_OUTPUT.PUT_LINE(resultado);
            Lnumero:= Lnumero+1;
        END LOOP;
        Ltabla:= Ltabla+1;
    END LOOP;
    Ltabla:=0;
    Lnumero:=0;
    LOOP 
        Ltabla:=Ltabla+1;
        DBMS_OUTPUT.PUT_LINE('***********************************************');
        DBMS_OUTPUT.PUT_LINE('*   TABLA DEL '|| Ltabla || '     *');
       
        DBMS_OUTPUT.PUT_LINE('***********************************************');
        EXIT WHEN Ltabla = 10;
    END LOOP;
END;
/