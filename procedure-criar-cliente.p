RUN pi-criarCliente (1,"Rodrigo Souza",     "102.330.40.50", "555.575.555.56-5",       "Centro",            "01001-000",    "São Paulo",        "Casa 1",       "SP",  "SP123456789" , "64545641" ,   DATE("08/04/2025"),     DATE("11/04/2025")).
RUN pi-criarCliente (2,"Jennife Jesus",     "102.030.40.10", "955.755.555.56-1",       "Copacabana",        "22070-000",    "Rio de Janeiro",   "Ap 202",       "RJ",  "RJ987654321" , "78234921" ,   DATE("08/04/2025"),     DATE("11/04/2025")).
RUN pi-criarCliente (3,"Myriam Souza",      "102.430.40.20", "455.555.555.56-2",       "Savassi",           "30140-100",    "Belo Horizonte",   "Cobertura",    "MG",  "MG456123789" , "89213456" ,   DATE("08/04/2025"),     DATE("11/04/2025")).
RUN pi-criarCliente (4,"Rubens Soares",     "102.430.40.30", "855.585.555.56-3",       "Boa Viagem",        "51020-020",    "Recife",           "Casa 2",       "PE",  "BA789321654" , "56473829" ,   DATE("08/04/2025"),     DATE("11/04/2025")).
RUN pi-criarCliente (5,"Adriano Soares",    "182.530.40.40", "555.855.555.56-4",       "Asa Sul",           "70330-010",    "Brasília",         "Bloco B",      "DF",  "RS321654987" , "47851236" ,   DATE("08/04/2025"),     DATE("11/04/2025")).
RUN pi-criarCliente (6,"Matheus Jesus",     "102.030.40.50", "555.555.555.56-5",       "Meireles",          "60175-120",    "Fortaleza",         "Ap 101",      "CE",  "PE654987321" , "68473920" ,   DATE("08/04/2025"),     DATE("11/04/2025")).
RUN pi-criarCliente (7,"Rita Pinho",        "102.930.40.60", "555.555.555.56-6",       "Centro",            "80010-000",    "Curitiba",         "Sala 7",       "PR",  "PR159357258" , "56234198" ,   DATE("08/04/2025"),     DATE("11/04/2025")).
RUN pi-criarCliente (8,"Raiane Silva",      "102.130.40.70", "555.555.555.56-7",       "Jardins",           "01420-001",    "São Paulo",        "Cob. 3",       "SP",  "SC753951456" , "79845613" ,   DATE("08/04/2025"),     DATE("11/04/2025")).
RUN pi-criarCliente (9,"Ricardo Prates",    "102.030.40.80", "455.555.555.56-8",       "Itaigara",          "41815-000",    "Salvador",         "Casa 3",       "BA",  "DF951357852" , "81234567" ,   DATE("08/04/2025"),     DATE("11/04/2025")).
RUN pi-criarCliente (10,"Erik Jesus",       "100.030.40.70", "155.555.855.56-7",       "Praia do Canto",    "29055-310",    "Vitória",          "Ap 305",       "ES",  "GO852741963" , "93456712" ,   DATE("08/04/2025"),     DATE("11/04/2025")).
RUN pi-criarCliente (11,"Leonardo Pacheco", "102.881.40.80", "855.555.555.76-8",       "Campinas",          "13010-000",    "Campinas",         "Sala 2",       "SP",  "CE147258369" , "77889900" ,   DATE("08/04/2025"),     DATE("11/04/2025")).



procedure pi-criarCliente.

    DEF INPUT PARAM p-cod-cliente     AS INT   NO-UNDO.
    DEF INPUT PARAM p-nome            AS CHAR  NO-UNDO.
    DEF INPUT PARAM p-rg              AS CHAR  NO-UNDO.
    DEF INPUT PARAM p-cpf             AS CHAR  NO-UNDO.
    DEF INPUT PARAM p-bairro          AS CHAR  NO-UNDO.
    DEF INPUT PARAM p-cep             AS CHAR  NO-UNDO.
    DEF INPUT PARAM p-cidade          AS CHAR  NO-UNDO.
    DEF INPUT PARAM p-complemento     AS CHAR  NO-UNDO.
    DEF INPUT PARAM p-estado          AS CHAR  NO-UNDO.
    DEF INPUT PARAM p-ref-habilitacao AS CHAR  NO-UNDO.
    DEF INPUT PARAM p-renavam         AS CHAR  NO-UNDO.
    DEF INPUT PARAM p-data-nasc       AS DATE  NO-UNDO.
    DEF INPUT PARAM p-dataCriacao     AS DATE  NO-UNDO.
    
    
    FIND FIRST cliente 
         WHERE cliente.cpf = p-cpf
         AND   cliente.rg  = p-rg NO-ERROR.
    
    if NOT AVAIL cliente then do:
           
        CREATE cliente.
        ASSIGN            
           cliente.cod-cliente     =  p-cod-cliente
           cliente.nome            =  p-nome
           cliente.rg              =  p-rg
           cliente.cpf             =  p-cpf
           cliente.bairro          =  p-bairro
           cliente.cep             =  p-cep
           cliente.cidade          =  p-cidade
           cliente.complemento     =  p-complemento
           cliente.estado          =  p-estado
           cliente.reg-habilitacao =  p-ref-habilitacao
           cliente.renavam         =  p-renavam
           cliente.data-nasc       =  p-data-nasc
           cliente.dataCriacao     =  p-dataCriacao  .
        MESSAGE "cliente criado com sucesso."
            VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    end.  
    ELSE DO:   
        MESSAGE "Cliete ja existe, por favor verificar!."
            VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    END.
END PROCEDURE.      
