import numpy as np
import subprocess
import sys


def default_install():
    subprocess.check_call(
        [sys.executable, "-m", "pip", "install", "-r", "../requirements.txt"]
    )

def install(package):
    for each_pkg in package:
        subprocess.check_call(
            [sys.executable, "-m", "pip", "install", each_pkg]
        )



choice = input("press 'y' to continue with the default package installation, or 'n' to install your own packages ")

if choice == 'y':
    default_install()
else:
    p_name = input("enter the package name ---- ").lower().split()
    install(p_name)
