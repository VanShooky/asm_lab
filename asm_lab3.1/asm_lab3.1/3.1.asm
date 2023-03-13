.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword
.data
array dword 1,2,3,4,5
sum dword 0
index word 0
two word 2
three word 3
.code
main PROC
mov edi, OFFSET array
mov ecx, LENGTHOF array
mov ebx, 0
L1:
mov ax, index
cdq
div two
cmp dx, 0
je DoIf

mov ax, index
cdq
div three
cmp dx, 0
jne DoElse
DoIf:

add ebx, [edi] ; добавить к сумме значение элемента массива


DoElse:
inc index
add edi, TYPE array ; перейти к следующему элементу
loop L1
mov sum, ebx

invoke ExitProcess,0
main ENDP
END main