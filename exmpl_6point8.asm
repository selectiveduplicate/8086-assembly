TITLE EXM_SXPTEIGHT  

;count-controlled loop to display a row of 80 stars
;for loop using LOOP instruction

;;;;;;;;;;;;;;;;;;;;

;The LOOP instruction is applied as follows:
    ;   LOOP destination_label 
    
;;;;;;;;;;;;;;;;;;;;



.MODEL SMALL
.STACK 100H
.DATA
.CODE


MAIN PROC
    
    MOV CX, 80          ;initialize CX counter to loop_count, here CX is the counter that will
    MOV DX, 80                    ;count how many stars have been displayed
                        
    MOV AH, 2           ;prepare display
    MOV DH, "*"         ;character to display
    
    JCXZ avoid          ;we have used "jump is CX is equal to zero" ins so that if CX=0 when
                        ;the loop is entered, then it will be decremented to FFFFh=65535; so
                        ;loop will execute 65535 times!
    
    TOP:   
            
            INT 021H        ;display a single star
             
           
             
            LOOP TOP        ;executing the LOOP ins causes CX to be decremented and if CX is not
                            ;zero, control is transferred to the destination_label. Here our label
                            ;is TOP. If CX=0, then the next instruction after LOOP is done.
                                                                                                                                                                  
                                                                                           
            
    avoid:
    
    ;END 1F    

MAIN ENDP
END MAIN
