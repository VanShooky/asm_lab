.386
.model flat,stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword
.data
n byte 3
sum word 0
.code

main PROC

mov ax, 0
BeginWhile:
cmp n, 0
jle EndWhile
add ax, 5
add sum, ax
dec n
jmp BeginWhile 
EndWhile:

INVOKE ExitProcess,0
main ENDP
END main
