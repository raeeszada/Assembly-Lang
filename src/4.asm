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
    a       WORD 30000        ; Unsigned 16-bit value
    b       DWORD 40000       ; Unsigned 32-bit value
    result  DWORD ?           ; 32-bit result variable

.code
main PROC
	 ; Step 1: Zero-extend 'a' to 32-bit
    movzx eax, a        ; EAX = zero-extended value of a

    ; Step 2: Add 'b' to EAX
    add eax, b          ; EAX = a + b

    ; Step 3: Store the result
    mov result, eax
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
