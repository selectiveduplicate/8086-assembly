;TITLE ADDING_ELEMENTS_OF_ARRAY
;
;.MODEL SMALL
;.STACK 100H
;.DATA
;
;;W DW 10,20,30,40
;
;.CODE
;MAIN PROC  
;    
;   
;MAIN ENDP
;END MAIN
;            




 W DW 10,20,30,40
    
    XOR AX, AX
    LEA SI, W
    MOV CX, 4
    
    ENTR_LOOP:
        
              ADD AX, [SI]
              ADD SI, 2
                
              LOOP ENTR_LOOP
                