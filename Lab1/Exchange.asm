
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here  

    MOV [0000H], 50H         ; Move 50H to Address 0000H
    MOV [0001H], 60H         ; Move 60H to Address 0001H
    MOV  AX,[0000H]          ; Move Contents of 0000H memory location to AX, hence AX stores 50H 
    MOV  BX,[0001H]          ; Move Contents of 0001H memory location to BX, hence BX stores 60H
    MOV [0000H], BX          ; Move contents of BX to memory location 0000H, hence 0000H contains 60H now
    MOV [0001H], AX          ; Move contents of AX to memory location 0001H, hence 0001H contains 50H now
                             ; Hence the Contents of AX and BX are exchanged!


ret




