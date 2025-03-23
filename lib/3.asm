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
   a       WORD 500          ; 16-bit variable
    b       DWORD 10000       ; 32-bit variable
    c       DWORD 2500        ; 32-bit variable
    result  DWORD ?           ; 32-bit result variable

.code
main PROC
	 ; Step 1: Zero-extend 'a' to 32-bit
    movzx eax, a         ; EAX = zero-extended value of a

    ; Step 2: Calculate (b - a)
   
    sub b, eax         ; EBX = b - a

    ; Step 3: Calculate (b - a) - c
    sub ebx, c           ; EBX = (b - a) - c

    ; Step 4: Store the result
    mov result, ebx






	
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
