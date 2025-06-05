find first cliente no-error.

if not avail   cliente  then do:

    create cliente.
    assign 
       cliente.nome        = "Rodrigo souza"
       cliente.rg          = "102.030.40.50"
       cliente.cpf         = "555.555.555.56-5"
       cliente.dataCriacao = 08/04/2025.
       
    create cliente.
    assign 
       cliente.nome        = "Jennife Jesus"
       cliente.rg          = "102.030.40.10"
       cliente.cpf         = "555.555.555.56-1"
       cliente.dataCriacao = 08/04/2025.
       
    create cliente.
    assign 
       cliente.nome        = "Myriam Souza"
       cliente.rg          = "102.030.40.20"
       cliente.cpf         = "555.555.555.56-2"
       cliente.dataCriacao = 08/04/2025.
       

    create cliente.
    assign 
       cliente.nome        = "Rubens Soares"
       cliente.rg          = "102.030.40.30"
       cliente.cpf         = "555.555.555.56-3"
       cliente.dataCriacao = 08/04/2025.
       
    create cliente.
    assign 
       cliente.nome        = "Adriano Soares"
       cliente.rg          = "102.030.40.40"
       cliente.cpf         = "555.555.555.56-4"
       cliente.dataCriacao = 08/04/2025.
       
    create cliente.
    assign 
       cliente.nome        = "Matheus Jesus"
       cliente.rg          = "102.030.40.50"
       cliente.cpf         = "555.555.555.56-5"
       cliente.dataCriacao = 08/04/2025.  
       
   create cliente.
    assign 
       cliente.nome        = "Rita Pinho"
       cliente.rg          = "102.030.40.60"
       cliente.cpf         = "555.555.555.56-6"
       cliente.dataCriacao = 08/04/2025.
       
    create cliente.
    assign 
       cliente.nome        = "Raiane Silva"
       cliente.rg          = "102.030.40.70"
       cliente.cpf         = "555.555.555.56-7"
       cliente.dataCriacao = 08/04/2025.
       
    create cliente.
    assign 
       cliente.nome        = "Ricardo Prates"
       cliente.rg          = "102.030.40.80"
       cliente.cpf         = "555.555.555.56-8"
       cliente.dataCriacao = 08/04/2025.
       
       
    create cliente.
    assign 
       cliente.nome        = "Erik Jesus"
       cliente.rg          = "102.030.40.70"
       cliente.cpf         = "555.555.555.56-7"
       cliente.dataCriacao = 08/04/2025.
       
    create cliente.
    assign 
       cliente.nome        = "Leonardo Pacheco"
       cliente.rg          = "102.030.40.80"
       cliente.cpf         = "555.555.555.56-8"
       cliente.dataCriacao = 08/04/2025.  
              
       
       
       
       
   MESSAGE "Cliente Criado com sucesso"
       VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
end.

else do:
   MESSAGE "Cliente inexistente, por favor verifique"
       VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
end.


     
