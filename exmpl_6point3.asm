
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

TITLE EXM_SXPTHREE

.MODEL SMALL
.STACK 100H
.DATA
.CODE


MAIN PROC
    MOV AL, "}"
    MOV BL, ">"
    
    MOV AH, 2           ;prepare to display
    
    CMP AL, BL          ;check if AL <= BL
    JNBE bl_is_lower    ;if not below or equal, then BL must appear first, so transfer control      
    
    MOV DL, AL          ;if BL not lower, then AL must be
    JMP DISPLAY
    
    bl_is_lower:
                    MOV DL, BL
    
    DISPLAY:
                    INT 021H
                    
    
    ;END 1F    
    
END MAIN




