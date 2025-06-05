FIND FIRST cliente WHERE cliente.cpf = "155.555.855.56-" NO-LOCK NO-ERROR.

IF AVAIL cliente THEN DO:

   MESSAGE "Cliente existe" 
        VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.


    IF cliente.estado = "es" THEN DO:

        MESSAGE " Seja bem vindo ao Estado de : ESPIRITO SANTO"
            VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    END.
        
    ELSE 
        MESSAGE "Cliente não é do estado de :  ESPIRITO SANTO"
            VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
END.


IF NOT AVAIL cliente THEN DO: 

    MESSAGE "cliente nao existe"
        VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
END.
                                                     
          

          
 //if   = se
//then = então
//else = se não
//and  = e
// or  = ou
// do  = faça
   
   
          
