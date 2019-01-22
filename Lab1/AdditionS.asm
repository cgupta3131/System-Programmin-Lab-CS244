
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here 

MOV [0000H], 50H        ; Move 50H into 0000H address
MOV [0001H], 20H        ; Move 20H into 0001H address
MOV AL, [0000H]         ; Move contents of Address 0000H into AL, hence AL stores 50H in it
ADD AL, [0001H]         ; Add contents of AL and Addres 0001H and store that value into AL, hence AL contains 70H
MOV [0002H], AL         ; Move Contents of AL(i.e 70H) into address 0002H

ret                     ; Hence 0002H Address contains 70H




