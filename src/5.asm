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
    

	source BYTE 10, 20, 30, 40, 50
dest   BYTE 5 DUP(0)         ; Empty destination array

.code
main PROC
	
   
 mov esi, OFFSET source
    mov edi, OFFSET dest
    add esi, 4               ; Point to last byte of source (5-1=4)
    mov ecx, 5

reverse_loop:
    mov al, [esi]
    mov [edi], al
    dec esi                  ; Move backward in source
    inc edi                  ; Move forward in dest
    loop reverse_loop






	
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
