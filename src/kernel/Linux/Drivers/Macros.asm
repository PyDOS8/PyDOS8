; This file holds all of the macros to simplify NASM development.

; Memory allocation and deallocation

%macro load1OntoStack 1
 push %1
endmacro%

%macro load2OntoStack 2
  push %1
  push %2
endmacro%

%macro load3OntoStack 3
  push %1
  push %2
  push %3
endmacro%

%macro load4OntoStack 4
  push %1
  push %2
  push %3
  push %4
endmacro%

%macro load5OntoStack 5
  push %1
  push %2
  push %3
  push %4
  push %5
endmacro%

%macro load6OntoStack 6
  push %1
  push %2
  push %3
  push %4
  push %5
  push %6
endmacro%

%macro deallocate6FromStack 6
 pop %1
 pop %2
 pop %3
 pop %4
 pop %5
 pop %6
endmacro%

%macro deallocate1FromStack 1
  pop %1
endmacro%

%macro deallocate2FromStack 2
  pop %1
  pop %2
endmacro%

%macro deallocate3FromStack 3
  pop %1
  pop %2
  pop %3
endmacro%

%macro deallocate4FromStack 4  
  pop %1
  pop %2
  pop %3
  pop %4
endmacro%

%macro deallocate5FromStack 5
  pop %1
  pop %2
  pop %3
  pop %4
  pop %5
endmacro%


; General functions

; Moving data around
%macro move 2
  mov %1, %2
endmacro%

; Exiting
%macro exit 2
  mov eax, %1
  xor %2, %2
endmacro%

; JMP
%macro goto 1
  jmp _%1
endmacro%

; Comparing
%macro compare 2
  cmp %1, %2
endmacro%

; JE
%macro GIFE 1
 je _%1
endmacro%

; JL
%macro gotoifless 1
  jl _%1
endmacro%

; JG
%macro GIFG 1
  jg _%1
endmacro%

;JGE
%macro GIFEL 1
  jge _%1
endmacro%

%macro moverl 2
  mov %2, %1
endmacro%

; JGL
%macro GIFLG 1
  jle _%1
endmacro%

; JLE
%macro GIFLE 1
  jle _%1
endmacro%

; For loop
%macro ForLoopJL 3
 cmp %1, %2
 jl _%3
endmacro%

; For loop 2
%macro ForLoopJE 3
 cmp %1, %2
 je _%3

; For loop 3
%macro ForLoopJG 3
 cmp %1, %2
 jg _%3
endmacro%

%macro text %1
 section .text
  global _%1
endmacro%

%macro interrupt 1
 int %1
endmacro%

%macro multiply 2
  mul %1, %2
endmacro%

%macro divide 2
  div %1, %2
endmacro%

%macro add 2
 add %1, %2
endmacro%

%macro subtract 2
  sub %1, %2
endmacro%

%macro clear 
  xor %1, %1
endmacro%
