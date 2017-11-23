TITLE TAKING_SINGLE_CHARACTER_AND_DISPLAYING_IT

.MODEL SMALL
.STACK 100H
.DATA
 
 MSG DB "Goodbye you sacrilegious sack of shit!$"
 
.CODE
MAIN PROC   
    
    MOV AX, @DATA           ;initializing DS
    MOV DS, AX
    
    MOV AH, 1               ;single character input
    INT 021H                ;take input
    MOV BL, AL              ;the input from keyboard is stored in AL, we temporarily
                            ;store it in BL
    
    
    MOV AH, 2               ;%%%% line 16 to 20 is for a new line               
    MOV DL, 0DH
    INT 021H
    MOV DL, 0AH
    INT 021H
    
    MOV DL, BL              ;get the stored info from BL to DL
    INT 021H                ;display that shit
    
    
    MOV AH, 2               ;NEWLINE               
    MOV DL, 0DH
    INT 021H
    MOV DL, 0AH
    INT 021H
    
    LEA DX, MSG             ;getting the fucking message 
    MOV AH, 9               ;function for displaying a string
    INT 021H                ;and the display
                                            
    
    MOV AH, 04CH            ;if anyone cares, this code returns control to DOS, i.e the OS
    INT 021H                
                                            
MAIN ENDP
END MAIN