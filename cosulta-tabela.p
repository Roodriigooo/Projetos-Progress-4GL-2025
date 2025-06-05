FOR EACH cliente NO-LOCK.

   FIND FIRST cliente-automoveis 
       WHERE  cliente-automoveis.cpf     = cliente.cpf 
       AND    cliente-automoveis.renavam = cliente.renavam NO-LOCK NO-ERROR. 
       
   IF NOT AVAIL cliente-automoveis then DO:
         
         MESSAGE " Cliente nao esta vinculado com veiculo."
             VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
         
    END.
END.    
    

/* FOR EACH cliente NO-LOCK,                                                        */
/*                                                                                  */
/*     EACH cliente-automoveis WHERE cliente-automoveis.cpf = cliente.cpf NO-ERROR. */
/*                                                                                  */
/*         DISPLAY                                                                  */
/*             cliente.nome                                                         */
/*             cliente-automoveis.renavam                                           */
/*             WITH WIDTH 220.                                                      */
/*                                                                                  */

/*                                                                                  */
/*                                                                                  */
/* END.                                                                             */



/* for EACH cliente-automoveis NO-LOCK: */
/*     DISP cliente-automoveis.         */
/* end.                                 */
