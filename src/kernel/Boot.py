import time
import os
print("        Loading Bootloader...")
time.sleep(5)
print("        Loading Kernel...                ")
time.sleep(5)
from Kernel import *
print("        Loading FDriver...               ")
time.sleep(5)
from FDriver import *
print("        Loading Terminal...              ")
time.sleep(5)
from Terminal import *