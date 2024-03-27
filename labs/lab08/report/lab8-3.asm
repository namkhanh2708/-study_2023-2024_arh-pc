%include 'in_out.asm'
SECTION .data
msg db "Результат: ",0
msgl db " функции :f(x) = 30x-11",0

SECTION .text
global _start

_start:
pop ecx
pop edx
sub ecx,1
mov esi, 0

next:
cmp ecx,0h
jz _end
mov ebx,30

pop eax
call atoi

mul ebx
add eax,-11

add esi,eax
loop next
_end:
mov eax, msgl
call sprintLF
mov eax,msg
mov eax, esi
call iprintLF
call quit
