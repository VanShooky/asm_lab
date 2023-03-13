.386
.model flat,stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword
.data
n dword 23568
counter byte 0
num word 0
ten word 10
IsDifferent byte 1

.code
main PROC

BeginWhile1:
mov eax, n
mov counter, 0
cmp num, 9
jg EndWhile1

BeginWhile2:
cmp eax, 0
jne DoIf
inc num
jmp BeginWhile1
DoIf:
cdq 
div ten
cmp dx, num
jne BeginWhile2

inc counter
cmp counter, 2
je DoIfCounter
jmp BeginWhile2 

DoIfCounter:
mov IsDifferent, 0

EndWhile1:

INVOKE ExitProcess,0
main ENDP
END main