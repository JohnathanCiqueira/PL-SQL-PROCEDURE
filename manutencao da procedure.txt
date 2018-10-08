CREATE OR REPLACE PROCEDURE incluir_segmercado
    (p_id IN segmercado.id%type , 
     p_descricao IN segmercado.descricao%type)
IS  

BEGIN
    INSERT into segmercado VALUES (p_id, upper(p_descricao));
    COMMIT;
END;


select * from segmercado;

