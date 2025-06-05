RUN pi-criar-moto ("2024", "4F7S9G2S7", "Preta",    "Honda",             "Hornet-F",        "Hornet",   "FD5FS",    "64545641", 1).
RUN pi-criar-moto ("2023", "8G9D2K3L1", "Vermelha", "Yamaha",            "MT-03",           "MT",       "AG4RT",    "78234921", 2).
RUN pi-criar-moto ("2022", "7H2J8L9M3", "Azul",     "Suzuki",            "GSX-S750",        "GSX",      "YU2LK",    "89213456", 3).
RUN pi-criar-moto ("2021", "3K8D1J5N2", "Branca",   "Kawasaki",          "Ninja 400",       "Ninja",    "ZK8DN",    "56473829", 4).
RUN pi-criar-moto ("2020", "6T7B9M2F1", "Cinza",    "Ducati",            "Monster",          "Monster", "TR3MD",    "47851236", 5).
RUN pi-criar-moto ("2019", "9L3K2J6N4", "Verde",    "BMW",               "G310R",           "G310",     "LK2JN",    "68473920", 6).
RUN pi-criar-moto ("2024", "1Q2W3E4R5", "Amarela",  "Triumph",           "Street Triple",   "Triple",   "QW3ER",    "56234198", 7).
RUN pi-criar-moto ("2022", "5M6N7B8V9", "Laranja",  "KTM",               "Duke 390",        "Duke",     "MN7BV",    "79845613", 8).
RUN pi-criar-moto ("2023", "7C8X9Z1A2", "Roxa",     "Royal Enfield",     "Meteor",          "Meteor",   "CX9ZA",    "81234567", 9).
RUN pi-criar-moto ("2021", "4V5B6N7M8", "Prata",    "Harley-Davidson",   "Iron 883",        "Iron",     "VB6NM",    "93456712", 10).
RUN pi-criar-moto ("2020", "3E2D1F5G6", "Preta",    "Honda",             "CB 500F",         "CB500F",   "ED1FG",    "77889900", 11).



PROCEDURE pi-criar-moto.

    DEF INPUT PARAMETER p-ano       AS CHAR.
    DEF INPUT PARAMETER p-chassis   AS CHAR.
    DEF INPUT PARAMETER p-cor       AS CHAR.
    DEF INPUT PARAMETER p-marca     AS CHAR.
    DEF INPUT PARAMETER p-modelo    AS CHAR.
    DEF INPUT PARAMETER p-nome      AS CHAR.
    DEF INPUT PARAMETER p-placa     AS CHAR.
    DEF INPUT PARAMETER p-renavam   AS CHAR.
    DEF INPUT PARAMETER p-cod_moto  AS INT .

    FIND FIRST automoveis WHERE automoveis.chassis = p-chassis NO-ERROR.
    
    IF NOT AVAIL automoveis then do:
             
        CREATE automoveis.
        ASSIGN
               automoveis.ano      = p-ano        
               automoveis.chassis  = p-chassis    
               automoveis.cor      = p-cor        
               automoveis.marca    = p-marca      
               automoveis.modelo   = p-modelo     
               automoveis.nome     = p-nome       
               automoveis.placa    = p-placa      
               automoveis.renavam  = p-renavam    
               automoveis.cod_moto = p-cod_moto.  
            
        MESSAGE "Veiculo cadastrado com sucesso"
            VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.

    END.
    
    ELSE DO:
      MESSAGE " Veiculo nao cadastrado por favor verificar."
          VIEW-AS ALERT-BOX INFORMATION BUTTONS OK.
    END.

END PROCEDURE.

