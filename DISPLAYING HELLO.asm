TITLE DISPLAYING_STRING

.MODEL SMALL
.STACK 100H
.DATA

MSG DB 'THIS IS ASSEMBLY LANGUAGE BITCH!$'

.CODE
MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX                  ;initialize DS
    
    LEA DX, MSG                 ;get message by putting offset address of MSG into DX
    MOV AH, 9                   ;prepare to display, as it's a string output, we use 9
                                ;for this routine
                                
    INT 021H                    ;display the message
    
    MOV AH, 4CH                 ;after executing the program, control should return to DOS
                                ;this is done by "INT 021H", function 4CH
    INT 021H
    
MAIN ENDP
END MAIN