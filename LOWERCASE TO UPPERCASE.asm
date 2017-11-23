TITLE LOWER_TO_UPPER

.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC
    
    MOV AX, @DATA               ;initializing DS
    MOV DS, AX
    
    MOV AH, 1                   ;signle character input
    INT 021H
    MOV BL, AL                  ;store the char temporarily on BL
    
    AND BL, 0DFH                ;change 5-th bit to get lowercase
    
    MOV AH, 2                   ;code for a newline
    MOV DL, 0DH
    INT 021H
    MOV DL, 0AH
    INT 021H
    
    MOV DL, BL                  ;move to DL for displaying
    INT 021H                    ;display the shit
    
MAIN ENDP
END MAIN