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
    m       WORD -32000       ; Signed 16-bit value
    n       DWORD 100000      ; Unsigned 32-bit value
    result  DWORD ?           ; 32-bit result variable
.code
main PROC
	; Step 1: Sign-extend 'm' to 32-bit
    movsx eax, m        ; EAX = sign-extended value of m

    ; Step 2: Load 'n' into EBX
    mov ebx, n          ; EBX = n

    ; Step 3: Perform the subtraction
    sub ebx, eax        ; EBX = n - m

    ; Step 4: Store the result
    mov result, ebx
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
