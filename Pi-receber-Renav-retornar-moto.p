DEF VAR c-nome AS CHAR NO-UNDO.


RUN  Pi-receber-Renav-retornar-moto (INPUT "56473829" , OUTPUT c-nome ).



PROCEDURE Pi-receber-Renav-retornar-moto.

    DEF INPUT  PARAMETER p-renavam  AS CHAR NO-UNDO.
    DEF OUTPUT PARAMETER p-nome     AS CHAR NO-UNDO.
    
    

    FIND FIRST automoveis WHERE automoveis.renavam = p-renavam   NO-ERROR .
    
    IF AVAIL automoveis then do:
    
       ASSIGN
              p-nome = automoveis.nome.
            
             
       DISP  "Renavam Informado pertence a moticleta :" p-nome. 
         
    END.
    
    ELSE DO:
        MESSAGE  "Renavam Não Existe"
            VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.   
            
    END.

END PROCEDURE
