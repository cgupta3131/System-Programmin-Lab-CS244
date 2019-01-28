
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV BX, 1009H ; Move the value 0009H to BX register

MOV AL, BH ; Move 10 to AL 
MOV AH, BL ; Move 09 to AH
ROL AL,4   ; Make 4 rotations in AL to get 01 in AL
ROL AH,4   ; Make 4 rotations in AH to get 90 in AH 
