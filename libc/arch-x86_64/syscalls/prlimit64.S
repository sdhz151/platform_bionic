/* Generated by gensyscalls.py. Do not edit. */

#include <private/bionic_asm.h>

ENTRY(prlimit64)
    movq    %rcx, %r10
    movl    $__NR_prlimit64, %eax
    syscall
    cmpq    $-MAX_ERRNO, %rax
    jb      1f
    negl    %eax
    movl    %eax, %edi
    call    __set_errno_internal
1:
    ret
END(prlimit64)

ALIAS_SYMBOL(prlimit, prlimit64)
