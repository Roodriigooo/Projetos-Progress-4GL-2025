DEF VAR  p-nome AS CHAR NO-UNDO.

                                           
RUN  Pi-RetornaNome( INPUT "555.555.555.56-5" , OUTPUT p-nome ). 


PROCEDURE Pi-RetornaNome.


    DEFINE INPUT    PARAMETER p-cpf  AS CHAR NO-UNDO  FORMAT "x(20)".
    DEFINE OUTPUT   PARAMETER p-nome AS CHAR NO-UNDO.

    
        
    FIND  cliente WHERE cliente.cpf = p-cpf NO-ERROR.
        
    IF AVAILABLE cliente THEN DO:  
       ASSIGN  
           p-nome =  cliente.nome.
        
       DISPLAY 
          "Nome do cliente:" p-nome.
    END.
    
    ELSE DO:
        DISPLAY "Cliente com CPF n�o encontrado.".      
        
    END.
       



END PROCEDURE.








    




















/* Fa�a uma procedure para receber um CPF e retornar o Nome do cliente                   */
/* Fa�a uma procedure para receber um Renavam e retornar o nome do carro                 */
/* Fa�a uma procedure para receber um CPF e retornar uma vari�vel com o nomes�dos�carros */
