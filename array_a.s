.data
    inn:
        .long 0
    array:
        .short 65292, 65312, 65318, 65390, 65416, 65336, 65433, 65529, 65423, 65343
        size = . - array
    str:
        .ascii "     \n"
.text
.globl _start
_start:
    movb $10, %cl
    movl $array, %esi
    movl $inn, %edx

    cir:
        xorw $0xff00, (%esi)
        addl $2, %esi
    loop cir

    xorl %ecx, %ecx
    movb $5, %cl
    movl $array, %esi
    addl $2, %esi
    xorl %edi, %edi

    sum:
        addl (%esi), %edi
        addl $4, %esi
    loop sum
    movw %di, %ax
    movl $str, %esp
    addl $4, %esp
    en:
        movw $10, %bx
        xorl %edx, %edx
        divw %bx
        addb $48, %dl
        movb %dl, (%esp)
        subl $1, %esp
        cmpw $0, %ax
        je ene
    loop en
    ene:

    movl $4, %eax
    movl $1, %ebx
    movl $7, %edx
    movl $str, %ecx
    int $0x80

    movl $1, %eax
    movl $0, %ebx
    int $0x80
