
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here

MOV AX, 0002H  ; Move 2 into AX
PUSH AX        ; Push AX into the Stack (2>
MOV AX, 0003H  ; Move 3 into AX
PUSH AX        ; Push AX into the Stack  <2,3>
MOV AX, 0002H  ; Move 2 into AX
PUSH AX        ; Push AX into the Stack  <2,3,2>
POP AX         ; 2 stores into AX <2,3>
POP CX         ; 3 stores into CX <2>
MUL CX         ; Multiply AX*CX, and store value into AX Hence AX becomes 6
PUSH AX        ; Push AX into the Stack <2,6>
POP AX         ; 6 stores into AX <2>
POP CX         ; 2 stores into CX  <>
ADD AX,CX      ; AX and CX get added and stores into AX, Hence 8 gets stored into AX
PUSH AX        ; Push AX into the stack <8>
MOV AX, 0004H  ; Move 4 into AX
PUSH AX        ; Push AX into stack <8,4>
POP CX         ; 4 stores into CX <8>
POP AX         ; 8 stores into AX <>
SUB AX,CX      ; CX gets subtracted from AX and AX becomes 4

;  FINAL ANSWER BEING STORED IN AX

ret




