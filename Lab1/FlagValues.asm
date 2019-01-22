
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here
MOV AH, 90H       ;CF=0    SF=0     ZF=0     ; Move 90H into the contents of AH
MOV BH, 80H       ;CF=0    SF=0     ZF=0     ; Move 80H into the contents of BH
ADD AH, BH        ;CF=1    SF=0     ZF=0     : Add Contents of AH and BH <i.e 80H+ 90H = 110H where 1 is stored as Carry Flag and 10H gets stored into AH>
SUB AH, BH        ;CF=1    SF=1     ZF=0     ; Subtract 10H-80H = 90H  <i.e 16-128 and Sign Flag=1 as answer is negative>
ADD BH, 10H       ;CF=0    SF=1     ZF=0     ; Add 80H+10H = 90H <SF of previousis being carried>
SUB AH, BH        ;CF=0    SF=0     ZF=1     ; Subtract AH-BH and store the value into AH, also as AH=BH hence the ZF becomes 1

ret




