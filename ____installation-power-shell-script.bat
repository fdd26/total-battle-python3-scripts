@ECHO OFF

@SETLOCAL

IF EXIST python-3.12.2-amd64.exe (
    @ECHO Python 3.12.2 for Windows 64-bit is already downloaded

) else (
    @ECHO Downloading Python 3.12.2 for Windows 64-bit... Please wait this might take a while...

    powershell.exe -nologo -noprofile -Command "(New-Object Net.WebClient).DownloadFile('https://www.python.org/ftp/python/3.12.2/python-3.12.2-amd64.exe', 'python-3.12.2-amd64.exe')"

    @pause

    powershell.exe -nologo -noprofile -Command "Get-ChildItem -Force python-3*.exe"

    @pause

)

SET PYTHON3_PATH=C:\Progra~1\Python312
SET PIP3_PATH=C:\Progra~1\Python312\Scripts

SET PYTHON3_EXE=%PYTHON3_PATH%\python.exe
SET PIP3_EXE=%PIP3_PATH%\pip3.exe

IF EXIST C:\Progra~1\Python312\python.exe (
    @ECHO Python 3.12.2 for Windows 64-bit is already installed

) else (
    @ECHO Installing Python 3.12.2 for Windows 64-bit...
    python-3.12.2-amd64.exe InstallAllUsers=1 AssociateFiles=1 PrependPath=1
    @pause
)

SET PATH=C:\Progra~1\Python312\Scripts\;C:\Progra~1\Python312\;%PATH%;
SET PATHEXT=%PATHEXT%;.PY;.PYW;

IF EXIST C:\Progra~1\Python312\Scripts\pip3.exe (

    @ECHO Installing Python AutoGUI library...
    pip3 install pyautogui

    @ECHO Installing Python ImageSearch library...
    pip3 install python_imagesearch
    @pause

) else (

    @ECHO pip3.exe not found

)

IF EXIST Exchange-Beep-main.zip (
    @ECHO Exchange-Beep-main.zip is already downloaded
) else (
    @ECHO Downloading Python Exchange Beep script...

    powershell.exe -nologo -noprofile -Command "(New-Object Net.WebClient).DownloadFile('https://codeload.github.com/fdd26/Exchange-Beep/zip/refs/heads/main?file=Exchange-Beep-main.zip', 'Exchange-Beep-main.zip')"
    @pause

    powershell.exe -nologo -noprofile -Command "Get-ChildItem -Force Exchange-Beep*.zip"
    @pause
)

IF EXIST Exchange-Beep-main.zip (
    @ECHO Extracting Python Exchange Beep script
    powershell.exe -nologo -noprofile -Command "Expand-Archive -Force -Path Exchange-Beep-main.zip -DestinationPath ."
    @pause

    powershell.exe -nologo -noprofile -Command "Get-ChildItem -Force *a*"
    @pause
)

@ECHO Move extracted files to the current directory
MOVE /Y Exchange-Beep-main\*.* .

RMDIR .\Exchange-Beep-main\

@REM C:\Progra~1\Python312\Python.exe Main.py

@pause

