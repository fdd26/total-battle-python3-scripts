#!python3

#####################################################################
#
# Works with Python 3.12+
#
# Tested successfully on Windows Desktop
#
# pip install pywin32
#
#####################################################################

import winsound
import pyautogui as pag
import time
from python_imagesearch.imagesearch import imagesearch
import win32
import win32api
import win32con

def leftClick():
    win32api.mouse_event(win32con.MOUSEEVENTF_LEFTDOWN,0,0)
    time.sleep(.1)
    win32api.mouse_event(win32con.MOUSEEVENTF_LEFTUP,0,0)
    print('Left Click')


# Merc frequency is set to 500Hz
freqMerc = 500

# duration is set to 100 milliseconds
dur = 500


# while loops
i = 1

while i < 10:
    leftClick()
    time.sleep(0.5)
    i += 1
    print( "\n# Try again [" + str( i ) + "]\n" )
    winsound.Beep(freqMerc, dur)

print( "\n#DONE\n" )
exit( 1 )

