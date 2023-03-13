.386
.model flat,stdcall
.stack 4096
ExitProcess proto, dwExitCode:dword
.data
n sword 0
.code

main proc
mov ax, n
btc ax, 1
btc ax, 15

invoke ExitProcess,0
main endp
end main