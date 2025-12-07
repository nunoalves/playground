; Basically prints out hello world...
;
; This is a real-mode .COM program. Should run on any DOS system without much
; trouble (e.g. MS-DOS 5, FreeDOS1.4). Assembled with nasm 3.01.
;
;    > nasm -f bin hello.asm -o hello.com

org 100h            ; .COM programs start at offset 100h

mov dx, msg         ; DS:DX -> string
mov ah, 9           ; DOS print-string function
int 21h             ; INT 21,9 - Print String

mov ax, 4C00h       ; Exit program where ah=4Ch al=00h (return code) 
int 21h             ; INT 21,4C - Terminate Process With Return Code

msg db "Hello World!$",0