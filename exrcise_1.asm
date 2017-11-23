TITLE EXRCISE_1

.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
    
    
    MOV AX, 0FFFDH      ;placing arbitrary values to AX, BX to test our code
    MOV BX, 0DH
    
    CMP AX, 0           ;is AX < 0?
    
    JNL END_CODE        ;if not, then don't do anything
    
    MOV BX, 0FFFFH      ;if AX < 0, then put -1 in BX 
    
    END_CODE:
    
MAIN ENDP
END MAIN