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
    

	myArray BYTE 10, 20, 30, 40, 50  ; Array of 5 bytes
.code
main PROC
	
     mov esi, OFFSET myArray      ; Point ESI to start of array
    mov ecx, 5                   ; Counter for 5 elements

loop_start:
    mov al, [esi]                ; Move byte from [ESI] to AL
    inc al                       ; Increment value by 1
    mov [esi], al                ; Store updated value back
    inc esi                      ; Move to next byte
    loop loop_start              ; Repeat until ECX = 0



	
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
