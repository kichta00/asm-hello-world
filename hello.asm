section .data
    msg db 'Hello World!', 0
    len equ $ - msg

section .text
    global main               ; Nota: 'main' invece di '_main'
    extern ExitProcess        ; Da kernel32.dll
    extern GetStdHandle       ; Da kernel32.dll
    extern WriteConsoleA      ; Da kernel32.dll

main:
    ; Get stdout handle
    mov rcx, -11             ; STD_OUTPUT_HANDLE
    call GetStdHandle
    mov rcx, rax             ; Handle in RCX
    
    ; WriteConsole(handle, text, length, ...)
    mov rdx, msg             ; Testo
    mov r8, len              ; Lunghezza
    lea r9, [rsp-8]          ; Puntatore a DWORD bytesWritten (dummy)
    push 0                   ; Riserva spazio nello stack
    call WriteConsoleA
    
    ; ExitProcess(0)
    mov rcx, 0
    call ExitProcess