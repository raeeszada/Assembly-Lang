TITLE

; Name: 
; Date: 
; ID: 
; Description: 

INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

; these two lines are only necessary if you're not using Visual Studio
INCLUDELIB kernel32.lib
INCLUDELIB user32.lib

.data
    

	byteArray  BYTE 1, 2, 3, 4
wordArray  WORD 100, 200, 300, 400
dwordArray DWORD 1000, 2000, 3000, 4000
.code
main PROC
	
   ; Byte array: Add 1 to each
    mov ecx, 4
    mov esi, 0
byte_loop:
    mov al, byteArray[esi]
    inc al
    mov byteArray[esi], al
    inc esi
    loop byte_loop

    ; Word array: Subtract 10 from each
    mov ecx, 4
    mov esi, 0
word_loop:
    mov ax, wordArray[esi*2]
    sub ax, 10
    mov wordArray[esi*2], ax
    inc esi
    loop word_loop

    ; Dword array: Add 100 to each
    mov ecx, 4
    mov esi, 0
dword_loop:
    mov eax, dwordArray[esi*4]
    add eax, 100
    mov dwordArray[esi*4], eax
    inc esi
    loop dword_loop
 






	
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
