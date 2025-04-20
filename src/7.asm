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
    
myVar WORD 1234h
	; data declarations go here

.code
main PROC
	
   
 
mov esi, OFFSET myVar
    inc WORD PTR [esi]    ; Correct size specified





	
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
