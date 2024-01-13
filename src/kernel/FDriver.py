from Kernel import *
can_read_file = False
can_delete_file = False
can_write_file = False
file_permissions = "ALL"
reading_file = False
writing_file = False
reading_file = False
deleting_file = False 

can_read_folder = False
can_write_folder = False
can_delete_folder = False
folder_permissions = "ALL"
deleting_folder = False
writing_folder = False
reading_folder = False

# File Manipulation And Permissions

# HANDLING File PERMISSIONS
if file_permissions == "ALL":
    can_read_file = True
    can_delete_file = True
    can_write_file = True
elif file_permissions == "READ":
    can_read_file = True
elif file_permissions == "WRITE":
    can_write_file = True
else:
    can_delete_file = True

# Handling File Interactions

# Writing A File
if writing_file == True:
    if can_write_file == True:
        write_file()
    else:
        print("Can't write a file because you don't have the right permissions!")

# Reading File
if reading_file == True:
    if can_read_file == True:
        read_file()
    else:
        print("You can't write a file because you don't have the right permissions!")

# Deleting A File   
if deleting_file == True:
    if can_delete_file == True:
        delete_file()
    else:
        print("You can't delete a file because you don't have the right permissions!")

# Folder Manipulation And Permissions

# HANDLING FOLDER PERMISSIONS
if folder_permissions == "ALL":
    can_read_folder = True
    can_write_folder = True
    can_delete_folder = True
elif folder_permissions == "DELETE":
    can_delete_folder = True
elif folder_permissions == "Write":
    can_write_folder = True
else:
    can_read_folder = True

# HANDLING FOLDER MANIPULATION

# DELETING A FOLDER
if deleting_folder == True:
    if can_delete_folder == True:
        delete_folder()
    else:
        print("You cannot delete a folder because you don't have the right permissions!")
if writing_folder == True:
    if can_write_folder == True:
        write_folder()
    else:
        print("You cannot write a folder because you don't have the right permissions!")
if reading_folder == True:
    if can_read_folder == True:
        read_folder()
    else:
        print("You cannot read a folder because you don't have the right permissions!")
