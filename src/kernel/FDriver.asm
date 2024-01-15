section .text
 global _FDriver
 global _SetAllPermissionsToOne
 global _CheckPermissions
section .data
  file_permissions: dd 4
  can_read_file: dd 0
  can_write_file: dd 0
  can_delete_file: dd 0
  writing_file: dd 0
  reading_file: dd 0
  deleting_file: dd 0

  folder_permissions: dd 0
  can_read_folder: dd 0
  can_write_folder: dd 0
  can_delete_folder: dd 0
  deleting_folder: dd 0
  writing_folder: dd 0
  reading_folder: dd 0

_FDriver:
; Checking file permission settings
 cmp dword [file_permissions], 4
 je _SetAllPermissionsToOne
 
_SetAllPermissionsToOne:
  mov dword [can_write_file], 1
  mov dword [can_read_file], 1
  mov dword [can_delete_file], 1
  jmp _FDriver

_CheckPermissions:
  %include "Kernel.asm"

  cmp dword [can_read_file], 1
  je _CheckIfReadingFile
  cmp dword [can_write_file], 1
  je _CheckIfWritingFile
  cmp dword [can_delete_file], 1
  je _checkIfDeletingFile
