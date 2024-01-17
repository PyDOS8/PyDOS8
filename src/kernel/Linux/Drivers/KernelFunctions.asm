;  This file handles all of the file and folder related tasks.

section .text
 global _CheckIfWritingFile   ;  This function will check if a file is being written. 
 global _WriteFile            ;  This function will write a file
 global _CheckIfDeletingFile  ;  This function will check if a file has been requested to be deleted
 global _CheckIfReadingFile   ;  This function will check if a file has been requested to be read.
 global _DeleteFile           ;  This function will delete a file.
 global _ReadFile             ;  This function will read a file.
section .data
 
_CheckIfWritingFile:
    ; The rest of the code here... Because I am dumb...

_CheckIfDeletingFile:
  ; I am retarded enough not to know the goddamn system calls

_WriteFile:
  ; The rest of the dumbest code you ever saw because I cannot do any better.


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;  PS. I am extremely bad at coding because I have an extremely low IQ, so why don't you write the code? ;
;  I really suck at Assembly, so I don't even know why I am using it for the virtual drivers.            ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
