import os
commands = ["listfile","print", "listdir", "help"]
from Kernel import *
from FDriver import *
while True:
    cmd = input("Enter command: ")
    if cmd == "cls":
        os.system("cls")
    elif cmd.startswith("print"):
        cmdAsStr = str(cmd[5::])
        print(cmdAsStr)
    elif cmd == "listfile":
            for file in os.listdir():
                if os.path.isfile(file):
                    print(file)
                else:
                    continue
    elif cmd == "listdir":
            for dirs in os.listdir():
                    if os.path.isdir(dirs):
                        print(dirs)
                    else:
                        continue
    elif cmd == "help":
        for cmds in commands:
            print(cmds)
    elif == "exit":
        confirm = input("Are you sure you want to leave? ")
        if confirm == True:
            break
        else:
            print("Exit aboarded")
