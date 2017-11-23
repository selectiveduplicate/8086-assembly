
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AX, 0AH

CMP AX, 0       ; check if AX < 0
JNL NOTHING     ; if not, then simply don't do anything

NEG AX         ;if less than zero, then change sign   
         
         
NOTHING:

ret




