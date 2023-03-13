.386
.model flat,stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword
.data
x1 word 3
x2 word 6
y1 word 6
y2 word 3
rook byte 0
bishop byte 0
.code
main PROC
mov ax, x1
cmp ax, x2
je DoRook

mov ax, y1
cmp ax, y2
jne DoElseRook

DoRook:
mov rook, 1

DoElseRook:
mov ax, x1
sub ax, x2
imul ax, ax

mov bx, y1
sub bx, y2
imul bx, bx

cmp ax, bx
jne DoElseBishop

mov bishop, 1
DoElseBishop: 

INVOKE ExitProcess,0
main ENDP
END main