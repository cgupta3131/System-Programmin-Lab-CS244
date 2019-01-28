
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

;org 100h

DATA SEGMENT
    a DW ?   ; Initialize the variable a
    d DW ?   ; Initialize the variable d
    n DW ?   ; Initialize the variable n
DATA ENDS
 
 
CODE SEGMENT
    ASSUME CS:CODE DS:DATA
    START:
    
    MOV AX, DATA 
    MOV DS, AX
    MOV SI, 0008H  ; Set the offset to 0008H and my output will start from DS:0008H
    
    MOV a, 0000H   ; Initialize a with 0000H
    MOV d, 0009H   ; Initialize a with 0004H
    MOV n, 0006H   ; Initialize a with 0006H
                  
    MOV CX,n       ; MOVE 'n' into CX Register (as loop has to be iterated n times)
    L1:
      MOV AX, a    ; MOVE value of a into AX register
      MOV [SI], AX ; MOVE the value at AX to memeory location SI
      INC SI       ; Increment SI
      MOV AX, a       
      ADD AX, d    ; Add d to AX register 
      MOV a, AX    ; Move this new value at AX register to a
      LOOP L1      ; Running the LOOP till CX becomes 0
      
; Output Array starts fro DS:0008H location        
CODE ENDS 


ret




