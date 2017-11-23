TITLE INVERSING_A_GIVEN_STRING

.MODEL SMALL
.STACK 100H
.DATA

STR1 DB 'HELLO WORLD'
STR2 DB 13 DUP(?)
COUNT DW 13

.CODE
MAIN PROC
    
        BEGIN:
        
        MOV AX, @DATA
        MOV DS, AX
        
        MOV ES, AX
        
        MOV CX, COUNT
        
        MOV SI, 0               ;SI POINTS TO THE BEGINNING OUR STRING
        MOV DI, 0               ;DI POINTS TO THE BEGINNING OF OUR INVERSED STRING
        
        ADD DI, COUNT           ;TAKE DI TO LAST POSITION+1
        DEC DI                  ;TAKE DI TO LAST POSITION
        
        CONT_INVERSING:
        
                        MOV AL, STR1[SI]        ;STORE THE 1ST ELEMENT IN AL
                        MOV STR2[DI], AL
                        INC SI
                        DEC DI
                        
                        LOOP CONT_INVERSING
       
       
      ; LEA DX, STR2
;       MOV AH, 9
;       INT 21H
       
       MOV AH, 4CH
       INT 21H 
       END BEGIN
       
MAIN ENDP
END MAIN
                        