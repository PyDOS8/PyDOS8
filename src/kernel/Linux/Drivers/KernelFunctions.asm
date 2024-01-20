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

_WriteFile:
  %include "Macros.asm"
  move eax, 1
  move ecx, filename
  load2OntoStack eax, ecx 
  deallocate2FromStack eax, ecx 
 
