.686
.model flat
extern _ExitProcess@4 : PROC
extern _GetUserNameA@8 : PROC
extern _MessageBoxA@16 : PROC
public _main

.data
    buffer  db 10 dup (0)
    nSize   dd 10 
    _title  db 'username'

.code
_main PROC

    ; GetUserNameA(buffer, nSize)
    push offset nSize
    push offset buffer
    call _GetUserNameA@8

    ; EAX = 0 means an error occured
    cmp eax, 0
    jz error

    ; MessageBoxA(hwnd, text, title, type)
    push 0
    push offset _title
    push offset buffer
    push 0
    call _MessageBoxA@16

error:
    call _ExitProcess@4
_main ENDP
END
