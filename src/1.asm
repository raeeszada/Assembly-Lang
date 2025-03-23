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
    

	; data declarations go here
 x       DWORD 25000        ; First 32-bit value
    y       DWORD 15000        ; Second 32-bit value
    result  DWORD ?            ; Result variable
.code
main PROC
	
    ; Load x into EAX
    mov eax, x

    ; Add y to EAX
    add eax, y

    ; Store result in 'result'
    mov result, eax






	
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
