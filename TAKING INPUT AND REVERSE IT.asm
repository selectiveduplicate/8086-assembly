TITLE taking_input_and_reverse

.MODEL SMALL
.STACK 100H
.DATA

;STRING1 DW 'HELLO THERE'

.CODE
MAIN PROC
    
    MOV CX, 0
    
    PUSHIN:
        
        MOV AH, 1             ;TAKING INPUT ONE CHARACTER AT A TIME
        INT 21H
        MOV BL, AL            ;STORING THE INPUT IN BL FOR TESTING
        
        CMP BL, 0DH           ;TESTING FOR A NEWLINE COMMAND, THE HEX VALUE FOR NEWLINE IS 0DH
        JE NEWLINE            ;IF FOUND, GO TO NEWLINE LABEL
        PUSH BX               ;IF NOT, KEEP TAKING INPUT AND PUSHING IN BX
        INC CX                ;INCREMENT CX TO KNOW HOW MANY CHARACTERS HAS BEEN INPUTTED
        JMP PUSHIN            ;REPEAT THESE PROCEDURES
    
    NEWLINE:
            MOV AH, 2         ;DISPLAY NEWLINE
            MOV DL, 0DH
            INT 21H
            MOV DL, 0AH
            INT 21H 
            
    POPOUT:                   ;DISPLAY THE REVERSED FORM OF INPUT
            POP DX            ;POP DX PERFORMS THE SAME THINGS AS WE DO WITH INT AND AH = 2
            INT 21H           ;DISPLAY
            LOOP POPOUT       ;CONTINUE DISPLAYING UNTIL CX BECOMES ZERO
MAIN ENDP
END MAIN