DEF  VAR d-data AS DATE  NO-UNDO .
DEF  VAR c-DATA AS CHAR FORMAT "x(50)"   NO-UNDO .


ASSIGN 
    
    d-data = 01/25/1998   //TODAY
    c-data = STRING(YEAR(d-data)) + "-" + string(MONTH(d-data), "99") + "-" + string(DAY(d-data), "99" ) + " " +  STRING("00:00:01").
    

DISP
    d-data
    c-data
