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
    

	myArray DWORD 1, 2, 3, 4, 5, 6  ; 6 elements (but we'll use every 2nd one)

.code
main PROC
	
   
   mov ecx, 3               ; We'll access 3 elements: index 0, 2, 4
    mov ebx, 0               ; Index for scaling

process_scaled:
    mov eax, myArray[ebx*8]  ; Access every second DWORD (4*2 = 8 bytes step)
    add eax, 2
    mov myArray[ebx*8], eax
    inc ebx
    loop process_scaled






	
	call DumpRegs ; displays registers in console

	exit

main ENDP
END main
