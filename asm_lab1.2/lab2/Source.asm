.386
.model flat,stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword
.data
b byte 1
cc byte 1
d byte 0
t byte 0
s byte 0
.code

main proc
mov al, b 
xor al, 1

mov bl, cc
xor bl, 1
or al, bl

mov bl, d
xor bl, 1
and al, bl

mov t, al

mov al, b
or al, d
xor al, 1
mov s,al

mov al, cc
or al, d
xor al, 1

or al, s
mov s, al

cmp al, t
sete al 

invoke ExitProcess,0
main endp
end main