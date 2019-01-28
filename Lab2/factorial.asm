
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

;org 100h

DATA SEGMENT
    a DW ?    ; Declare the Data Byte variable 'a'
DATA ENDS
 
 
CODE SEGMENT
    ASSUME CS:CODE DS:DATA
    START:
    
    MOV AX, DATA
    MOV DS, AX
    
    MOV a,  07H     ; Initialize the value of a with 07H
    MOV AX, 0001H   ; Move the value of 0001H at the memory location AX
                  
    MOV CX, a       ; Initialize CL with 'a' as the loop would be iterated 'a' times
    L1: MUL CX      ; Multiply the value at CL register to the value at AX register
    LOOP L1         ; Run the loop until CL becomes zero
    
CODE ENDS 


ret




