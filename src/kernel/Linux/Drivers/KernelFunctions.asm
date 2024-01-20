;  This file handles all of the file and folder related tasks.

section .text
 global _CheckIfWritingFile   ;  This function will check if a file is being written. 
 global _WriteFile            ;  This function will write a file
 global _CheckIfDeletingFile  ;  This function will check if a file has been requested to be deleted
 global _CheckIfReadingFile   ;  This function will check if a file has been requested to be read.
 global _DeleteFile           ;  This function will delete a file.
 global _ReadFile             ;  This function will read a file.

section .bss
  filesize: resb 10 
section .data
  filename: db "U"
  filecontent: db "This is the file's content"
_CheckIfWritingFile
  mov ecx, filename
  push ecx
  
_CheckIfDeletingFile:
  mov ecx, filename
  push ecx
_WriteFile:
 ; Load values and variables into registers
 mov eax, 1
 mov ecx, filename

 ; Load registers into memory
 push eax
 push ecx

 ; Clear register's values
 xor eax, eax
 xor ecx, ecx 

 ; Deallocate the memory
 pop eax
 pop ebx
 
_ReadFile:
  ; Load variables into registers
  mov ecx, filesize
  mov edx, filename
  mov esi, filecontent
 
  ; Load registers into memory
  push ecx
  push edx
  push esi
 
  ; Clear registers
  xor ecx, ecx 
  xor edx,edx
  xor esi, esi 

  ; Deallocate the stack
  pop eax
  pop ecx
  pop edx
  pop esi 
