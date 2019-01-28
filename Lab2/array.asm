
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

;org 100h

DATA SEGMENT
DATA ENDS
 
 
CODE SEGMENT
    ASSUME CS:CODE DS:DATA
    START:
                
    MOV AX, DATA
    MOV DS, AX
    MOV SI, 0005H   ; Keep the offset as 0005H and hence my array will be stored from DS:0005
    
    MOV [SI], 01H   ; Move the value 01H at memory location at SI
    INC SI          ; Increment the memory location at SI
    MOV [SI], 02H
    INC SI
    MOV [SI], 03H
    INC SI
    MOV [SI], 02H
    INC SI
    MOV [SI], 03H
    INC SI
    
    MOV SI,0005H    ; Make the value of SI as the initial offset
    MOV AL, 00H     ; Move 00H to memory location AL
    MOV CL, 05H     ; CL stores the number of elements in the array
    
    L1: 
        XOR AL, [SI]    ; Taking the XOR of value at AL and the value at SI memory location
        INC SI          ; Increment the value of SI
        LOOP L1         ; Running the loop CL times
            
    
CODE ENDS 


ret




