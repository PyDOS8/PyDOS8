section .text
 global _FDriver
 global _SetAllPermissionsToOne
 global _CheckPermissions
section .data
  ; File Handling And Permissions
  file_permissions: dd 4
  can_read_file: dd 0
  can_write_file: dd 0
  can_delete_file: dd 0
  writing_file: dd 0
  reading_file: dd 0
  deleting_file: dd 0

  ; Folder Permissions And Handling
  folder_permissions: dd 0
  can_read_folder: dd 0
  can_write_folder: dd 0
  can_delete_folder: dd 0
  deleting_folder: dd 0
  writing_folder: dd 0
  reading_folder: dd 0

_FDriver:

; File Permissions
; Checking file permission settings

 ; Checking if `file_permissions` variable is set to 4 (EG. All)
 cmp dword [file_permissions], 4
 je _SetAllPermissionsToOne

_SetAllPermissionsToOne:
  mov dword [can_write_file], 1
  mov dword [can_read_file], 1
  mov dword [can_delete_file], 1
  mov dword [can_delete_folder], 1
  mov dword [can_write_folder], 1
  mov dword [can_read_folder], 1
  jmp _FDriver

_CheckPermissions:
  %include "KernelFunctions.asm" ; Include Kernel functions (eg. `CheckIfReadingFile`, `CheckIfWritingFile`, `CheckIfDeletingFile`
  ; and `checkIfDeletingFile`)

  ; Check if we can read a file
  cmp dword [can_read_file], 1
  je _CheckIfReadingFile ; If we can, goto `CheckIfReadingFile`

  ; Check if we can write a file
  cmp dword [can_write_file], 1
  je _CheckIfWritingFile ; If we can, goto `CheckIfWritingFile`

  ; Check if we can delete a file
  cmp dword [can_delete_file], 1 
  je _CheckIfDeletingFile ; If we can, goto `CheckIfDeletingFile

  ; Check if we can delete a folder
  cmp dword [can_delete_folder], 1 
  je _CheckIfDeletingFolder ; If we can, goto `CheckIfDeletingFolder`

  ; Check if we can write a folder
  cmp dword [can_write_folder], 1
  je _CheckIfWritingFolder ; If we can, goto `CheckIfWritingFolder`

 ; Check if we can read a folder
 cmp dword [can_read_folder], 1
 je _CheckIfReadingFolder  ; If we can, goto `CheckIfReadingFolder`
