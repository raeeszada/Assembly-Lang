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
 p       WORD 100          ; 16-bit variable
    q       DWORD 5000        ; 32-bit variable
    result  DWORD ?           ; 32-bit result variable

.code
main PROC
	 
   ; Zero-extend 'p' to 32-bit
    movzx eax, p        ; EAX = zero-extended value of p (16-bit to 32-bit)

    ; Add 'q' to EAX
    add eax, q          ; EAX = EAX + q

    ; Store the result in 'result'
    mov result, eax






	
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
