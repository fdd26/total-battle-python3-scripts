import winsound
import pyautogui as pag
import time
from python_imagesearch.imagesearch import imagesearch

# frequency is set to 500Hz
freq = 500

# duration is set to 100 milliseconds
dur = 500



while True:
    pos = imagesearch("exchange1.png")
    if pos[0] != -1:
        winsound.Beep(freq, dur)
        del pos

    pos = imagesearch("exchange2.png")
    if pos[0] != -1:
        winsound.Beep(freq, dur)
        del pos

    pos = imagesearch("exchange3.png")
    if pos[0] != -1:
        winsound.Beep(freq, dur)
        del pos

    pos = imagesearch("exchange4.png")
    if pos[0] != -1:
        winsound.Beep(freq, dur)
        del pos

    time.sleep(0.05)
