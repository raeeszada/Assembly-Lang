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
     p       WORD 12345        ; Unsigned 16-bit value
    q       WORD 20000        ; Unsigned 16-bit value
    result  DWORD ?           ; 32-bit result variable
.code
main PROC
	 ; Step 1: Zero-extend 'p' to 32-bit
    movzx eax, p        ; EAX = zero-extended value of p

    ; Step 2: Zero-extend 'q' to 32-bit
    movzx ebx, q        ; EBX = zero-extended value of q

    ; Step 3: Perform the addition
    add eax, ebx        ; EAX = p + q

    ; Step 4: Store the result
    mov result, eax
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
