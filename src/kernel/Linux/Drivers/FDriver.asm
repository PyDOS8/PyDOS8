;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;                             X86 Assembly                                         ;
;    (NOTE: When variables are set to Zero it means false in this codebase)        ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

section .text
 global _FDriver
 global _SetAllPermissionsToOne
 global _CheckPermissions
 global _SetWriteFileToTrue
 global _SetReadFileToTrue
 global _SetDeleteFileToTrue
 global _SetReadFolderToTrue
 global _SetWriteFolderToTrue
 global _SetDeleteFolderToTrue
 global _SetAllFolderPermissionsToTrue
 global _SetAllFilePermissionsToTrue

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
 cmp dword [file_permissions], 3
 je _SetWriteFileToTrue
_SetAllPermissionsToOne:

  ; Setting File And Folder Permissions to 1
  mov dword [can_write_file], 1
  mov dword [can_read_file], 1
  mov dword [can_delete_file], 1
  mov dword [can_delete_folder], 1
  mov dword [can_write_folder], 1
  mov dword [can_read_folder], 1
  jmp _FDriver

_CheckPermissions:
  %include "KernelFunctions.asm" ; Include Kernel functions (eg. `CheckIfReadingFile`, `CheckIfWritingFile`, 
  ; `CheckIfDeletingFile` and `checkIfDeletingFile`)

  ; Check if we can read a file
  cmp dword [can_read_file], 1
  je _CheckIfReadingFile ; If we can, goto `CheckIfReadingFile`

  ; Check if we can write a file
  cmp dword [can_write_file], 1
  je _CheckIfWritingFile ; If we can, goto `CheckIfWritingFile`

  ; Check if we can delete a file
  cmp dword [can_delete_file], 1 
  je _CheckIfDeletingFile ; If we can, goto `CheckIfDeletingFile

  ; Checking folder permissions
  ; Check if we can delete a folder
  cmp dword [can_delete_folder], 1 
  je _CheckIfDeletingFolder ; If we can, goto `CheckIfDeletingFolder`

  ; Check if we can write a folder
  cmp dword [can_write_folder], 1
  je _CheckIfWritingFolder ; If we can, goto `CheckIfWritingFolder`

 ; Check if we can read a folder
 cmp dword [can_read_folder], 1
 je _CheckIfReadingFolder  ; If we can, goto `CheckIfReadingFolder`

; Set `write_file` to 1
_SetCanWriteFileToTrue:
  mov dword [can_write_file], 1 ; This means we can write a file

; Set `read_file` to 1
_SetReadFileToTrue:
  mov dword [can_read_file], 1 ; This means we can read a file

; Set `delete_file` to 1
_SetDeleteFileToTrue:
 mov dword [can_delete_file], 1 ; This means we can delete a file

; Set `write_folder` to 1
_SetWriteFolderToTrue:
  mov dword [can_write_folder], 1 ; This means we can write a folder

; Set `delete_folder` to 1
_SetDeleteFolderToTrue:
  mov dword [can_delete_folder], 1 ; This means we can delete a folder

; Set `read_folder` to 1
_SetReadFolderToTrue:
  mov dword [can_read_folder], 1 ; This means we can read a folde

; Set all file permissions to 1
_SetAllFilePermissionsToTrue:
  mov dword [can_write_file], 1
  mov dword [can_read_file], 1
  mov dword [can_delete_file], 1

; Set all folder permissions to 1
_SetAllFolderPermissionsToTrue:
  mov dword [can_write_folder], 1
  mov dword [can_delete_folder], 1
  mov dword [can_read_folder], 1
