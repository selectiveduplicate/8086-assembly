TITLE DISPLAYING_PATTERNS_OF_LAB_3

.MODEL SMALL
.STACK 100H
.DATA

.CODE
MAIN PROC 
    
    MOV CX, 4                           ;WE ARE TAKING OUR MAIN LOOP COUNTER AS 4, BECAUSE 
    MOV BX, 4                           ;OF THE WAY WE'VE USED OUR INNER LOOP/S            
                                        
        TOP:                            
            DEC BX                      ;decrement BX to maintain our main loop
            MOV CX, BX                  ;for obvious reasons...
                                        
            JZ EXIT                     ;in case BX, CX becomes zero
             
            MOV DL, 'X'                 
            MOV AH, 2
            INT 021H  
                 
            MOV CX, 3                   ;for displaying Y three times
             
            DO:
                MOV DL, 'Y'             
                MOV AH, 2
                INT 021H
                LOOP DO                 ;keep displaying 'Y' like a retard, as I've been told
            
             
            MOV DL, 'Z'
            MOV AH, 2
            INT 021H
            
            LOOP TOP                    ;go to the starting of our main loop, where we decrement                        
                                        ;our main counter
         EXIT:               
    
MAIN ENDP
END MAIN
