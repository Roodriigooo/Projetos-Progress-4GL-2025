RUN pi-criarVeic-cli("123.456.789-00", "64545641" ).
RUN pi-criarVeic-cli("987.654.321-00", "78234921" ).
RUN pi-criarVeic-cli("111.222.333-44", "89213456" ).
RUN pi-criarVeic-cli("555.666.777-88", "56473829" ).
RUN pi-criarVeic-cli("999.888.777-66", "47851236" ).
RUN pi-criarVeic-cli("222.333.444-55", "68473920" ).
RUN pi-criarVeic-cli("666.555.444-33", "56234198" ).
RUN pi-criarVeic-cli("000.111.222-33", "79845613" ).
RUN pi-criarVeic-cli("444.333.222-11", "81234567" ).
RUN pi-criarVeic-cli("777.888.999-00", "93456712" ).
RUN pi-criarVeic-cli("101.202.303-40", "77889900" ).





PROCEDURE pi-criarVeic-cli.

    DEF INPUT PARAMETER p-cpf     AS CHAR NO-UNDO.
    DEF INPUT PARAMETER p-renavam AS CHAR NO-UNDO.
    
    FIND FIRST cliente-automoveis 
         WHERE cliente-automoveis.cpf     = p-cpf
         AND   cliente-automoveis.renavam = p-renavam NO-ERROR.
         
    IF NOT AVAIL cliente-automoveis then do:
        
        CREATE cliente-automoveis.
        ASSIGN cliente-automoveis.cpf     = p-cpf
               cliente-automoveis.renavam = p-renavam .
               
        MESSAGE "registro criado com sucesso"
            VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    end.     
    ELSE DO:     
        MESSAGE "registrado ja existe ,por favor verificar"
            VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    END.
         
END PROCEDURE.         
