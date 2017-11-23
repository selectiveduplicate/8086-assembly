TITLE EXRCISE_1B  

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

;THIS CODE DISPLAYS THE ASCII CHARACTER IN DL IF IT'S BETWEEN A AND Z

;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%;
 

.MODEL SMALL
.STACK 100H
.DATA

.CODE 
MAIN PROC
    
    MOV DL, 'l'
    
    MOV AH, 2
    
    CMP DL, 'A'             ;is DL >= 'A'?
    JNGE end_code           ;no, then end the fucking code!
    
    CMP DL, 'Z'             ;is DL <= 'Z'?
    JNLE end_code           ;no, then end the fucking code!
    
    
    ;now execute the following codes if our criteria meet
    
    MOV AL, DL              ;get character
    MOV AH, 2               ;prepare to display
    INT 021H                ;display the shit out!
    
                
                
    end_code:                                     
    
    
MAIN ENDP
END MAIN