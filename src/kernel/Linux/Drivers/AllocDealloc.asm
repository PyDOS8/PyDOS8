%macro loadIntoMemory 4
  push %1
  push %2
  push %3
  push %4
endmacro%
%macro deallocateStack 4
  pop %1
  pop %2
  pop %3
  pop %4
endmacro%
