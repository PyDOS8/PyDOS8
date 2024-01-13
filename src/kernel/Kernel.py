import json 
import os
def delete_file(file, value):
    if os.path.exists("FS.json"):
        with open("FS.json", "r") as rf:
            content = rf.read()
            content.split(file,value)
            rf.close()
def read_file(read_filename):
    if os.path.exists("FS.json"):
        with open("FS.json", "r") as rf:
            print(rf.read(read_filename)) 
            rf.close()   
def write_file(content):
    with open("FS", "w") as wf:
        wf.write(content)
        wf.close()
def read_folder():
    pass
def write_folder():
    pass
def delete_folder():
    pass