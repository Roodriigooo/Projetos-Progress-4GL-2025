DEF VAR nome-veiculo AS CHAR NO-UNDO FORMAT "x(75)".
DEF VAR cpf-cliente  AS CHAR NO-UNDO .



                                     //155.555.855.56-7 cliente existe e tem carro       //455.555.555.56-2 sem carro mais cliente existe

RUN rec-cpf-retorna-carro (INPUT "155.555.855.56-" , OUTPUT nome-veiculo ) .

DISP nome-veiculo
     . 
    


 
    
PROCEDURE rec-cpf-retorna-carro.

    DEF INPUT  PARAM  p-cpf        AS CHAR NO-UNDO FORMAT "x(75)".
    DEF OUTPUT PARAM  p-nome-carro AS CHAR NO-UNDO .
    
    FIND FIRST cliente WHERE cliente.cpf = p-cpf NO-LOCK NO-ERROR.
        
    IF AVAIL cliente  THEN DO:

        FIND FIRST cliente-automoveis WHERE cliente-automoveis.cpf = p-cpf NO-LOCK NO-ERROR.
 
        IF AVAIL cliente-automoveis then do:
          
       
            FIND FIRST automoveis WHERE automoveis.renavam = cliente-automoveis.renavam NO-LOCK NO-ERROR.
          
            IF AVAIL automoveis then do:
                ASSIGN
                    p-nome-carro = automoveis.nome. 
                    p-nome-carro = " O CPF Informado pertence ao carro :" + automoveis.nome .
             
            END.
         
        END. 
        ELSE DO:
            ASSIGN
                p-nome-carro = cliente.nome + " , nao tem veiculo associado. "   .
                   

        END.

    END. 
    ELSE DO:
        ASSIGN
            p-cpf = "cliente com o cpf digitado nao existe! Verifique".
            //DISP p-cpf.
                    
    END.   
    
END PROCEDURE.
