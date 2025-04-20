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
    

	myArray WORD 1000h, 2000h, 3000h, 4000h, 5000h  ; 5 word elements

.code
main PROC
	
    mov esi, OFFSET myArray   ; ESI points to start of array
    mov ecx, 5                ; Counter for 5 elements
    xor eax, eax              ; Clear EAX to hold the sum

sum_loop:
    mov ax, [esi]             ; Get WORD at [ESI] into AX
    add eax, eax              ; Add AX to EAX
    add esi, 2                ; Move to next WORD (2 bytes)
    loop sum_loop             ; Repeat 5 times

    ; Result is in EAX
 






	
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
