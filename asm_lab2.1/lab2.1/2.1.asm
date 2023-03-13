.386
.model flat,stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword
.data
x1 sdword 1
x2 sdword 2
x3 sdword 3
x4 sdword 4
.code
main PROC
mov eax, x1
cmp eax, x2
jnl DoIf1
mov eax, x2
cmp eax, x3
jng DoIf2
mov eax, x3
cmp eax, x4
jnl DoIf3

DoIf1:
mov eax, x1
mov ebx, x2
mov x2, eax
mov x1, ebx


DoIf2:
mov eax, x2
mov ebx, x3
mov x3, eax
mov x2, ebx

DoIf3:
mov eax, x3
mov ebx, x4
mov x4, eax
mov x3, ebx

INVOKE ExitProcess,0
main ENDP
END main


