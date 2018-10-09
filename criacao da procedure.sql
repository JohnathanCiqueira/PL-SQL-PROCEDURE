CREATE PROCEDURE incluir_segmercado
    (p_id IN NUMBER , 
     p_descricao IN VARCHAR2)
IS  

BEGIN
    INSERT into segmercado VALUES (p_id, upper(p_descricao));
    COMMIT;
END;

--permite fazer o comando de procedures armazenadas no banco
EXECUTE incluir_segmercado(3, 'Farmaceutico')


--chamada da procedure dentro de um comando pl/sql
BEGIN
    incluir_segmercado(4, 'Industrial');
END;

select * from segmercado;
