
section .text 
    global _start 
        _start:
            ;write 
            mov eax, 4
            mov ebx,1
            mov ecx, massege
            mov edx, 15
            int 80h

            mov eax, 4 
            mov ebx, 1 
            mov ecx, 10 
            mov edx, 1 
            int 80h 

            ;read first number 
            mov eax, 3 
            mov ebx,0
            mov al, num1
            mov edx,3
            int 80h

            mov eax, 4 
            mov ebx, 1 
            mov ecx, 10 
            mov edx, 1 
            int 80h 

            ;write
            mov eax, 4 
            mov ebx, 1
            mov ecx, massege
            mov edx, 15
            int 80h

            mov eax, 4 
            mov ebx, 1 
            mov ecx, 10 
            mov edx, 1 
            int 80h 

            ;read second number
            mov eax, 3 
            mov ebx,0
            add bl, num2
            mov edx,3
            int 80h
            
            mov al, [num1]
            sub al, '0'

            mov bl, [num2]
            sub bl, '0'

            add al , bl
            add al,'0'

            mov [result],al

            ;write the final one 
            mov eax, 4 
            mov ebx, 1
            mov ecx, result
            mov edx, 1
            int 0x80
             
            mov eax,1 
            int 80h
        
section .data
    massege db 'enter digit'

section .bss
    num1 resb 1
    num2 resb 1
    result resb 1