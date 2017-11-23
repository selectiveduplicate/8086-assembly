TITLE EXAMINING_ODD_OR_EVEN_NUMBER

.MODEL SMALL
.STACK 100H
.DATA

FST_MSG DB 'YES THE THE NUMBER IN AL IS EVEN$'
SND_MSG DB 'NO THE NUMBER IN AL IS NOT EVEN$'

.CODE
MAIN PROC
    
    TEST AL, 1                              ;odd nmbr has 0 in 0th bit, so perform AND operation
                                            ;with 1 to see if it yields a zero result
    
    JZ YES_EVEN     ;if equal to zero, then the number is even
    JNZ NOT_EVEN    ;if not equal to zero, then the bit must be 1, so it's not even but odd
    
    YES_EVEN:
            
            MOV AX, @DATA
            MOV DS, AX
                                          ;displaying 'YES EVEN' message
            LEA DX, FST_MSG
            MOV AH, 9
            INT 021H
            
            MOV AH, 4CH
            INT 021H  
            
            
    NOT_EVEN:
    
            MOV AX, @DATA
            MOV DS, AX
                                            ;displaying 'NOT EVEN' message
            LEA DX, SND_MSG
            MOV AH, 9
            INT 021H   
            
            MOV AH, 4CH
            INT 021H 
            
    
MAIN ENDP
END MAIN