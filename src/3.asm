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
    

	myArray WORD 1, 2, 3, 4, 5, 6
constVal WORD 10

.code
main PROC
	
   
 mov ecx, 6            ; Number of elements
    xor esi, esi          ; Index register

process_loop:
    mov ax, myArray[esi]  ; AX = array element
    add ax, constVal      ; Add constant
    mov myArray[esi], ax  ; Store back
    add esi, 2            ; Move to next word
    loop process_loop






	
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
