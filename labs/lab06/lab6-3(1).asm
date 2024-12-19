%include 'in_out.asm' ; подключение внешнего файла
SECTION .data
div: DB 'Результат: ',0
rem: DB 'Остаток от деления: ',0
SECTION .text
GLOBAL _start
_start:
; ---- Вычисление выражения

mov eax, 1 ; EAX=1 
mov ebx, 3 ; EBX=3 
xor edx, edx ; обнуляем EDX для корректной работы div
div ebx ; EAX=EAX/EBX , EDX=остаток от деления

mov ebx, 3 ; x = 3
mul ebx ; EAX=EAX*x 
add eax, 5 ; EAX=EAX+5 
mov ebx, 7 ; EBX=7
mul ebx ; EAX=EAX*7 
mov edi, eax ; запись результата вычисления в 'edi'

mov edi, eax ; запись результата вычисления в 'edi'
; ---- Вывод результата на экран
mov eax, div ; вызов подпрограммы печати
call sprint ; сообщения 'Результат: '
mov eax, edi ; вызов подпрограммы печати значения
call iprintLF ; из 'edi' в виде символов
mov eax, rem ; вызов подпрограммы печати
call sprint ; сообщения 'Остаток от деления: '
mov eax, edx ; вызов подпрограммы печати значения
call iprintLF ; из 'edx' (остаток) в виде символов
call quit ; вызов подпрограммы завершения
