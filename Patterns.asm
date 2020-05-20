;nasm 2.13.02

NSTARS equ 7
NSPACE equ (NSTARS/2)
section .data
    inMsg db "Input number: ", 0xA, 0xD
    hello db "Greetings in my First project" ,0xA,0xD
    helloLen equ $-hello
    star db "*"
    space db "  "
    star_space db "* "
    space_star db " *"
    inLen equ $-inMsg
    newLine db 0xA,0xD

   
    
    
section .text
	global _start

_start:
	mov eax,4            ; The system call for write (sys_write)
	mov ebx,1            ; File descriptor 1 - standard output
	mov ecx,hello        ; Put the offset of hello in ecx
	mov edx,helloLen     ; helloLen is a constant, so we don't need to say
	                     ;  mov edx,[helloLen] to get it's actual value
	int 80h              ; Call the kernel
     
   
   
    
    
    ; task A 
    mov ecx,1
    mov [num],ecx
    
    mov ecx,NSTARS            ; we are going to use 5 always.
  
    A1:
    push rcx
  
    ; inner loop
    mov ecx, [num]
    A2:
    
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,star_space     
	mov edx,2                    
	int 80h        
    pop rcx
    loop A2
    ; newline 
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,newLine       
	mov edx,2                    
	int 80h        
    pop rcx
    ;increase [num]
    inc byte [num]

  
 
    pop rcx
    dec ecx
    jnz A1
    
    
    ;Greetings...
    mov eax,4            ; The system call for write (sys_write)
	mov ebx,1            ; File descriptor 1 - standard output
	mov ecx,hello        ; Put the offset of hello in ecx
	mov edx,helloLen     ; helloLen is a constant, so we don't need to say
	                     ;  mov edx,[helloLen] to get it's actual value
	int 80h              ; Call the kernel
     
    ;task B
    
  
    mov ecx,NSTARS
    mov [num],ecx
    
     ; we are going to use 5 always.
  
    B1:
    push rcx
  
    ; inner loop
    mov ecx, [num]
    B2:
    
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,star_space     
	mov edx,2                    
	int 80h        
    pop rcx
    loop B2
    ; newline 
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,newLine       
	mov edx,2                    
	int 80h        
    pop rcx
    ;increase [num]
    dec byte [num]

  
 
    pop rcx
    dec ecx
    jnz B1
    
    ;Greetings...
    mov eax,4            ; The system call for write (sys_write)
	mov ebx,1            ; File descriptor 1 - standard output
	mov ecx,hello        ; Put the offset of hello in ecx
	mov edx,helloLen     ; helloLen is a constant, so we don't need to say
	                     ;  mov edx,[helloLen] to get it's actual value
	int 80h              ; Call the kernel
     
    ;task C
    
    mov esi,1
    mov ecx,NSTARS
    mov [num],ecx
    
     ; we are going to use 5 always.
  
    C1:
    push rcx
    
    mov ecx, esi
    C_space:
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,space  
	mov edx,2                
	int 80h        
    pop rcx
    loop C_space
    inc esi
    

    ; inner loop
    mov ecx, [num]
    C2:
    
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,star_space     
	mov edx,2                    
	int 80h        
    pop rcx
    loop C2
    ; newline 
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,newLine       
	mov edx,2                    
	int 80h        
    pop rcx
    ;increase [num]
    dec byte [num]
    pop rcx
    dec ecx
    jnz C1
    
    
    ;Greetings...
    mov eax,4            ; The system call for write (sys_write)
	mov ebx,1            ; File descriptor 1 - standard output
	mov ecx,hello        ; Put the offset of hello in ecx
	mov edx,helloLen     ; helloLen is a constant, so we don't need to say
	                     ;  mov edx,[helloLen] to get it's actual value
	int 80h              ; Call the kernel
     
    ;task D
    
    mov esi,NSTARS
    mov ecx,1
    mov [num],ecx
    
    mov ecx,NSTARS
    
     ; we are going to use 5 always.
  
    D1:
    push rcx
    
    mov ecx, esi
    D_space:
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,space  
	mov edx,2                
	int 80h        
    pop rcx
    loop D_space
    dec esi
    

    ; inner loop
    mov ecx, [num]
    D2:
    
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,star_space     
	mov edx,2                    
	int 80h        
    pop rcx
    loop D2
    ; newline 
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,newLine       
	mov edx,2                    
	int 80h        
    pop rcx
    ;increase [num]
    inc byte [num]
    pop rcx
    dec ecx
    jnz D1
    
    
    ;Greetings...
    mov eax,4            ; The system call for write (sys_write)
	mov ebx,1            ; File descriptor 1 - standard output
	mov ecx,hello        ; Put the offset of hello in ecx
	mov edx,helloLen     ; helloLen is a constant, so we don't need to say
	                     ;  mov edx,[helloLen] to get it's actual value
	int 80h              ; Call the kernel
     
    ;task E
    
    mov esi,NSTARS
    mov ecx,1
    mov [num],ecx
    
    mov ecx,NSTARS
    
     ; we are going to use 5 always.
  
    E1:
    push rcx
    
    mov ecx, esi
    E_space:
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,space  
	mov edx,2                
	int 80h        
    pop rcx
    loop E_space
    dec esi
    

  
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,star
	mov edx,1               
	int 80h        
    pop rcx
  
    ; newline 
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,newLine       
	mov edx,2                    
	int 80h        
    pop rcx
   
    pop rcx
    dec ecx
    jnz E1
    
    
    
     ;Greetings...
    mov eax,4            ; The system call for write (sys_write)
	mov ebx,1            ; File descriptor 1 - standard output
	mov ecx,hello        ; Put the offset of hello in ecx
	mov edx,helloLen     ; helloLen is a constant, so we don't need to say
	                     ;  mov edx,[helloLen] to get it's actual value
	int 80h              ; Call the kernel
     
    ;task F
    
    mov esi,1
    mov ecx,NSTARS
    mov [num],ecx
    
     ; we are going to use 5 always.
  
    F1:
    push rcx
    
    mov ecx, esi
    F_space:
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,space  
	mov edx,2                
	int 80h        
    pop rcx
    loop F_space
    inc esi
    

    ; inner loop
   
    
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,star  
	mov edx,1                   
	int 80h        
    pop rcx
   
    ; newline 
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,newLine       
	mov edx,2                    
	int 80h        
    pop rcx
   
    pop rcx
    dec ecx
    jnz F1
    
    
    
    
      ;Greetings...
    mov eax,4            ; The system call for write (sys_write)
	mov ebx,1            ; File descriptor 1 - standard output
	mov ecx,hello        ; Put the offset of hello in ecx
	mov edx,helloLen     ; helloLen is a constant, so we don't need to say
	int 80h              ; Call the kernel
    
    
    mov ecx, NSTARS 
    shr ecx,1            ; NSTARS/2
    
    G1:
   
     ;spaces before 
    push rcx
    
    mov esi, NSPACE
    inc esi
    sub esi, ecx
    mov ecx, esi
    
    G_space:
     
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,space
	mov edx,2                   
	int 80h        
    pop rcx
    loop G_space
    
    pop rcx
    
    ;initial Star
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,star  
	mov edx,1                   
	int 80h        
    pop rcx
    ; spaces
    
    push rcx
    shl ecx,1
    dec ecx 
    G2:
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,space  
	mov edx,2                  
	int 80h        
    pop rcx
    
    dec ecx
    jnz G2
    pop rcx
    ;ending Star
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,space_star  
	mov edx,2                   
	int 80h        
    pop rcx
     ; newline
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,newLine  
	mov edx,2                   
	int 80h        
    pop rcx
    
    dec ecx
    jnz G1
    
    
    
    mov ecx, NSPACE
    inc ecx
    G3:
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,space  
	mov edx,2                  
	int 80h        
    pop rcx
    
    loop G3
   
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,star  
	mov edx,1                   
	int 80h        
    pop rcx
     ; newline
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,newLine  
	mov edx,2                   
	int 80h        
    pop rcx
    
    
    
    mov ecx, NSTARS 
    shr ecx,1            ; NSTARS/2
    
    G4:
   
     ;spaces before 
    push rcx
    
   
    
    
    G_space_1:
     
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,space
	mov edx,2                   
	int 80h        
    pop rcx
    loop G_space_1
    
    pop rcx
    
    ;initial Star
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,star  
	mov edx,1                   
	int 80h        
    pop rcx
    ; spaces
    
    push rcx
    mov esi, NSPACE
    sub esi, ecx
    mov ecx, esi
    inc ecx 
    
    shl ecx,1
    dec ecx 
    G4_2:
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,space  
	mov edx,2                  
	int 80h        
    pop rcx
    
    dec ecx
    jnz G4_2
    pop rcx
    
    
    ;ending Star
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,space_star  
	mov edx,2                   
	int 80h        
    pop rcx
     ; newline
    push rcx
    mov eax,4           
	mov ebx,1            
	mov ecx,newLine  
	mov edx,2                   
	int 80h        
    pop rcx
    
    dec ecx
    jnz G4
    
    
    
	mov eax,1            ; The system call for exit (sys_exit)
	mov ebx,0            ; Exit with return code of 0 (no error)
	int 80h;
    
section	.bss
num resb 1
cnt resb 1