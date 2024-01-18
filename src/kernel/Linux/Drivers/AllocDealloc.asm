; This file handles all of the allocation and deallocation using the stack 

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
