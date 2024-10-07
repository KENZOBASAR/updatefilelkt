@ECHO OFF
CLS
CHCP 65001 > NUL
TITLE LKT v3.0.0
REM ----------------DATA--SECTOR-----------------------------
Set _fBlack=[30m
Set _bBlack=[40m
Set _fRed=[31m
Set _bRed=[41m
Set _fGreen=[32m
Set _bGreen=[42m
Set _fYellow=[33m
Set _bYellow=[43m
Set _fBlue=[34m
Set _bBlue=[44m
Set _fMag=[35m
Set _bMag=[45m
Set _fCyan=[36m
Set _bCyan=[46m
Set _fLGray=[37m
Set _bLGray=[47m
Set _fDGray=[90m
Set _bDGray=[100m
Set _fBRed=[91m
Set _bBRed=[101m
Set _fBGreen=[92m
Set _bBGreen=[102m
Set _fBYellow=[93m
Set _bBYellow=[103m
Set _fBBlue=[94m
Set _bBBlue=[104m
Set _fBMag=[95m
Set _bBMag=[105m
Set _fBCyan=[96m
Set _bBCyan=[106m
Set _fBWhite=[97m
Set _bBWhite=[107m
Set _RESET=[0m
:Firstloadani
echo    LKT v3.0.0
echo  ░░░░░░░░░░░░░░░░
echo.
echo            Copyright KCR
timeout 1 > nul
cls
echo    LKT v3.0.0
echo  ▓▓▓░░░░░░░░░░░░░
echo.
echo            Copyright KCR
timeout 1 > nul
cls
echo    LKT v3.0.0
echo  ▓▓▓▓▓░░░░░░░░░░░
echo.
echo            Copyright KCR
timeout 1 > nul
cls
echo    LKT v3.0.0
echo  ▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓
echo.
echo            Copyright KCR
timeout 1 > nul
cls
:SPLASHSCREENLOAD
echo.
echo.
echo %_fBlue%██   ██  ██████ ██████  
echo %_fBlue%██  ██  ██      ██   ██ 
echo %_fBBlue%█████   ██      ██████  
echo %_fCyan%██  ██  ██      ██   ██ 
echo %_fCyan%██   ██  ██████ ██   ██ %_RESET%
echo    Loading...
mkdir LKTFREEEZEDATA
echo Pinging server... (2x)
ping kenzobasar.github.io > nul
ping kenzobasar.github.io > nul
echo FREEZEDATA running...
echo Getting device name...
echo Pinging server... (1)
ping kenzobasar.github.io > nul
echo Verifying Startup...
rmdir LKTFREEZEDATA
goto dissapear

:dissapear
cls
rem THE DISAPPEAR EFFECT1!
echo.
echo.
echo %_fBlue%▓▓   ▓▓  ▓▓▓▓▓▓ ▓▓▓▓▓▓  
echo %_fBlue%▓▓  ▓▓  ▓▓      ▓▓   ▓▓ 
echo %_fBBlue%▓▓▓▓▓   ▓▓      ▓▓▓▓▓▓  
echo %_fCyan%▓▓  ▓▓  ▓▓      ▓▓   ▓▓ 
echo %_fCyan%▓▓   ▓▓  ▓▓▓▓▓▓ ▓▓   ▓▓ %_RESET%
echo    Loading...
timeout 0 > nul
cls
echo %_fBlue%▒▒   ▒▒  ▒▒▒▒▒▒ ▒▒▒▒▒▒  
echo %_fBlue%▒▒  ▒▒  ▒▒      ▒▒   ▒▒ 
echo %_fBBlue%▒▒▒▒▒   ▒▒      ▒▒▒▒▒▒  
echo %_fCyan%▒▒  ▒▒  ▒▒      ▒▒   ▒▒ 
echo %_fCyan%▒▒   ▒▒  ▒▒▒▒▒▒ ▒▒   ▒▒ %_RESET%
echo    Loading...
timeout 0 > nul
cls
REM ------------------------------------------------------------
:SPLASHSCREEN
ECHO LKT 
ECHO -----------------------------------------------------------
type banner.lgk
ECHO Welcome to LKT
ECHO A simple Text editor
ECHO.
ECHO %_fCyan%Press any key to start!%_RESET%
pause > nul
GOTO START

:START
CLS
ECHO LKT
ECHO -----------------------------------------------------------
ECHO A - Back ...
ECHO B - Versioninfo
ECHO C - New  ...
ECHO D - Settings
CHOICE /C:ABCD /N /M ""
if errorlevel 4 (
    Goto settings
) else if errorlevel 3 (
    Goto Filename
) else if errorlevel 2 (
    Goto versioninfo
) else if errorlevel 1 (
    Goto Splashscreen
)

:versioninfo
CLS
ECHO LKT
ECHO -----------------------------------------------------------
ECHO A - Back ...
ECHO B%_fRed%╔═══════════════════════════════╗
ECHO C - New ║  VERSION INFORMATION          ║
ECHO         ║ Version name= 3.0.0           ║
ECHO         ║ Version tag= v3.0.0           ║
ECHO         ║ App name= KCR LKT             ║
ECHO         ╚═══════════════════════════════╝
ECHO               Press any key to go to main menu %_RESET%
PAUSE > NUL
GOTO START

:PRIVACYPOLICY
CLS
COLOR 1F
ECHO Privacy policy
ECHO -----------------------------------------------------------------
ECHO The KCR Privacy Policy:
ECHO   We will never collect user data and upload
ECHO   it to the server. We only use servers
ECHO --------------------------------------------
ECHO Press a key to go down
pause > nul
goto priva2

:priva2
CLS
COLOR 1F
ECHO Privacy policy
ECHO -----------------------------------------------------------------
ECHO   We will never collect user data and upload
ECHO   it to the server. We only use servers
ECHO   for Updates. If you have doubts
ECHO --------------------------------------------
ECHO Press a key to go down
pause > nul
goto priva3

:priva3
CLS
COLOR 1F
ECHO Privacy policy
ECHO -----------------------------------------------------------------
ECHO   it to the server. We only use servers
ECHO   for Updates. If you have doubts
ECHO   Go to kenzobasar.github.io for more details.
ECHO --------------------------------------------
ECHO      I agree - A
ECHO      I do not agree - B
CHOICE /C:AB /N /M ""
if errorlevel 2 (
    Goto sad
) else if errorlevel 1 (
    color 07
    Goto start
)


:FILENAME
CLS
ECHO %_fYellow%Filename%_RESET%
ECHO ═════════
ECHO.
ECHO  Press A to make a new file B to open a file
ECHO.
ECHO ░░░░Done░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░
CHOICE /C:AB /N /M ""
if errorlevel 2 (
    Goto openfile
) else if errorlevel 1 (
    Goto makefiletemplete
)

:settings
cls
echo Settings
echo -------------------------------------------------------------------
echo.
echo  A. Update LKT
echo  B. Privacy Policy
echo  C. Exit
CHOICE /C:ABC /N /M ""

if errorlevel 3 (
    Goto start
) else if errorlevel 2 (
    Goto privacypolicy
) else if errorlevel 1 (
    call lktupdater.cmd
)

:makefiletemplete
cls
echo File templete
echo --------------------------------------------------------------
echo A - Normal text file (BLANK)
echo B - Chart file
echo C - Table file
echo D - Smartart file
echo E - Custom template file
echo H - Markdown file
echo J - Documentation file
echo -----For-programmers-only---------
echo F - Freebasic template
echo G - Python template
echo I - Html template
CHOICE /C:ABCDEFGHIJ /N /M ""
if errorlevel 10 (
    Goto documentation
) else if errorlevel 9 (
    Goto htmlmakefile
) else if errorlevel 8 (
    Goto markdownmakefile
) else if errorlevel 7 (
    Goto pythonmakefile
) else if errorlevel 6 (
    Goto freebasicmakefile
) else if errorlevel 5 (
    Goto custommakefile
) else if errorlevel 4 (
    Goto smartartmakefile
) else if errorlevel 3 (
    Goto tablemakefile
) else if errorlevel 2 (
    Goto chartmakefile
) else if errorlevel 1 (
    Goto makefile
)

:documentation
CLS
ECHO Filename
ECHO ═════════
ECHO.
ECHO Enter filename
ECHO Remember to add .md in end of the filename!
SET /P "FILE=░"
CLS
ECHO %_fYellow%Filename%_RESET%
ECHO ═════════
ECHO.
ECHO Enter filename
ECHO Remember to add .md in end of the filename!
ECHO ░%file%░░
ECHO.
ECHO    Press any key!
pause > nul
goto customizedocumen

:customizedocumen
cls
echo Customize
echo ----------------------------------------------------------------
echo Title
set /p "title=]"
echo Author Name
set /p "author=]"
goto makefile9000

:makefile9000
ECHO --------%title%---------------------- >> %file%
ECHO Author = %author% >> %file%
CLS
:loop9000
CLS
ECHO %file%
ECHO -----------------------------------[Type Exitcom$ to exit]-[Type ** for bold text `` for code _ for italic]
TYPE %file%
SET /P "INPUT="
IF /I "%INPUT%"=="Exitcom$" goto Leave
IF /I "%INPUT%"=="Editlinecom$" goto crash
ECHO %INPUT% >> %file%
goto loop9000

:markdownmakefile
CLS
ECHO Filename
ECHO ═════════
ECHO.
ECHO Enter filename
ECHO Remember to add .md in end of the filename!
SET /P "FILE=░"
CLS
ECHO %_fYellow%Filename%_RESET%
ECHO ═════════
ECHO.
ECHO Enter filename
ECHO Remember to add .md in end of the filename!
ECHO ░%file%░░
ECHO.
ECHO    Press any key!
pause > nul
goto markdowncustomization

:htmlmakefile
CLS
ECHO Filename
ECHO ═════════
ECHO.
ECHO Enter filename
ECHO Remember to add .html in end of the filename!
SET /P "FILE=░"
CLS
ECHO %_fYellow%Filename%_RESET%
ECHO ═════════
ECHO.
ECHO Enter filename
ECHO Remember to add .html in end of the filename!
ECHO ░%file%░░
ECHO.
ECHO    Press any key!
pause > nul
goto htmlmakesimpledocument

:htmlmakesimpledocuments
cls
echo Hello world! > %file%.html
goto loop1

:markdowncustomization
cls
echo Markdown customization
echo --------------------------------------------------------------------------------
echo Title of markdown
set /p "TITLE="
echo # %TITLE% >> %FILE% 
echo Subtitle of markdown
set /p "TITLESUB="
echo ## Subtitle >> %file%
goto mdmake

:mdmake
CLS
:loop100
CLS
ECHO %file%
ECHO -----------------------------------[Type Exitcom$ to exit]-[Type ** for bold text `` for code _ for italic]
TYPE %file%
SET /P "INPUT="
IF /I "%INPUT%"=="Exitcom$" goto Leave
IF /I "%INPUT%"=="Editlinecom$" goto crash
ECHO %INPUT% >> %file%
goto loop100

:pythonmakefile
CLS
ECHO Filename
ECHO ═════════
ECHO.
ECHO Enter filename
ECHO Remember to add .py in end of the filename!
SET /P "FILE=░"
CLS
ECHO %_fYellow%Filename%_RESET%
ECHO ═════════
ECHO.
ECHO Enter filename
ECHO Remember to add .py in end of the filename!
ECHO ░%file%░░
ECHO.
ECHO    Press any key!
pause > nul
goto pythonfiletypes

:pythonfiletypes
cls
echo Python
echo ----------------------------------------------------------------------------
echo 1. Terminal
echo 2. GUI interface
set /p "input=>"
if /i "%input%"=="1" goto pythonterminal
if /i "%input%"=="2" goto pythongui

:pythonterminal
CLS
ECHO print("Hello world") >> %file%
:loop1000
CLS
ECHO %file%
ECHO -----------------------------------[Type Exitcom$ to exit]------------------------
TYPE %file%
SET /P "INPUT="
IF /I "%INPUT%"=="Exitcom$" goto Leave
IF /I "%INPUT%"=="Editlinecom$" goto crash
ECHO %INPUT% >> %file%
goto loop1000

:pythongui
CLS
echo import tkinter as tk >> %file%
echo from tkinter import messagebox >> %file%
echo. >> %file%
echo. >> %file%
echo def show_message(): >> %file% 
echo     messagebox.showinfo("Message", "Hello, World!") >> %file%
echo. >> %file%
echo root = tk.Tk() >> %file%
echo root.title("Hello World") >> %file%
echo. >> %file%
echo. >> %file%
echo button = tk.Button(root, text="OK", command=show_message) >> %file%
echo button.pack(pady=20) >> %file%
echo. >> %FILE%
echo root.mainloop() >> %file%
:loop2000
CLS
ECHO %file%
ECHO -----------------------------------[Type Exitcom$ to exit]------------------------
TYPE %file%
SET /P "INPUT="
IF /I "%INPUT%"=="Exitcom$" goto Leave
IF /I "%INPUT%"=="Editlinecom$" goto crash
ECHO %INPUT% >> %file%
goto loop2000

:freebasicmakefile
CLS
ECHO Filename
ECHO ═════════
ECHO.
ECHO Enter filename
ECHO Remember to add .bas in end of the filename!
SET /P "FILE=░"
CLS
ECHO %_fYellow%Filename%_RESET%
ECHO ═════════
ECHO.
ECHO Enter filename
ECHO Remember to add .bas in end of the filename!
ECHO ░%file%░░
ECHO.
ECHO    Press any key!
pause > nul
goto freebasicfiletypes

:freebasicfiletypes
cls
echo Freebasic 
echo ----------------------------------------------------------------------------
echo 1. Terminal
echo 2. GUI interface
set /p "input=>"
if /i "%input%"=="1" goto freebasicterminal
if /i "%input%"=="2" goto freebasicgui

:freebasicterminal
CLS
ECHO PRINT("Hello world") >> %file%
ECHO DO WHILE INKEY$ = "" >> %file%
ECHO LOOP >> %file%
:loop1000
CLS
ECHO %file%
ECHO -----------------------------------[Type Exitcom$ to exit]------------------------
TYPE %file%
SET /P "INPUT="
IF /I "%INPUT%"=="Exitcom$" goto Leave
IF /I "%INPUT%"=="Editlinecom$" goto crash
ECHO %INPUT% >> %file%
goto loop1000

:freebasicgui
CLS
ECHO SCREEN 12 >> %fILE%
ECHO COLOR 15, 1 >> %FILE%
ECHO PRINT("%file%          ") >> %file%
ECHO COLOR 0, 15 >> %file%
ECHO PRINT("Hello world") >> %file%
ECHO DO WHILE INKEY$ = "" >> %file%
ECHO LOOP >> %file%
:loop1000
CLS
ECHO %file%
ECHO -----------------------------------[Type Exitcom$ to exit]------------------------
TYPE %file%
SET /P "INPUT="
IF /I "%INPUT%"=="Exitcom$" goto Leave
IF /I "%INPUT%"=="Editlinecom$" goto crash
ECHO %INPUT% >> %file%
goto loop1000

:custommakefile
CLS
ECHO Filename
ECHO ═════════
ECHO.
ECHO Enter filename
SET /P "FILE=░"
CLS
ECHO %_fYellow%Filename%_RESET%
ECHO ═════════
ECHO.
ECHO Enter filename
ECHO ░%file%░░
ECHO.
ECHO    Press any key!
pause > nul
CLS
ECHO Customization
ECHO -----------------------------------------------------------------------
ECHO Add Chart?
ECHO [Y/N]
CHOICE /C:YN /N /M ""
if errorlevel 2 (
    Goto continuecustom1
) else if errorlevel 1 (
    Goto chartadd
)

:chartadd
echo. >> %file%
ECHO              ██ >> "%file%"
ECHO ██           ██ >> "%file%
ECHO ██           ██     ██ >> "%file%"
ECHO ██    ██     ██     ██ >> "%file%"
ECHO ██    ██     ██     ██ >> "%file%
GOTO continuecustom1

:continuecustom1
echo Add text (For chart)
echo ----Preview-----
ECHO              ██ 
ECHO ██           ██ 
ECHO ██           ██     ██ 
ECHO ██    ██     ██     ██ 
ECHO ██    ██     ██     ██ 
set /p "text="
echo %text% >> %file%
goto continuecustom2

:continuecustom2
echo Add smartart?
echo [Y/N]
CHOICE /C:YN /N /M ""
if errorlevel 2 (
    Goto continuecustom3
) else if errorlevel 1 (
    Goto smartartadd
)

:smartartadd
echo. >> %file%
ECHO Enter the text in rectangle 1
SET /P "r1="
ECHO Enter the text in rectangle 2
SET /P "r2="
ECHO Enter the text in rectangle 3
SET /P "r3="
ECHO Enter the text in rectangle 4
SET /P "r4="
ECHO ██%R1%████    █████%R2%██████ >> %FILE%
ECHO. >> %FILE%
ECHO ██%R3%████    █████%R4%██████ >> %FILE%
goto continuecustom3

:continuecustom3
echo Add table?
echo [Y/N]
CHOICE /C:YN /N /M ""
if errorlevel 2 (
    Goto makefile67
) else if errorlevel 1 (
    Goto tableadd
)

:tableadd
echo. >> %file%
ECHO Enter the text in A1 at line1
SET /P "A1="
ECHO Enter the text in B1 at line1
SET /P "B1="
ECHO Enter the text in C1 at line1
SET /P "C1="
ECHO Enter the text in D1 at line1
SET /P "D1="
ECHO Enter the text in A1 at line2
SET /P "A12="
ECHO Enter the text in B1 at line2
SET /P "B12="
ECHO Enter the text in C1 at line2
SET /P "C12="
ECHO Enter the text in D1 at line2
SET /P "D12="
ECHO %A1% │ %B1% │ %C1% │ %D1% │ >> "%FILE%"
ECHO %A12%│ %B12%│ %C12%│ %D12%│ >> "%FILE%"
goto makefile67

:makefile67
CLS
:loop67
CLS
ECHO %file%
ECHO -----------------------------------[Type Exitcom$ to exit]------------------------
TYPE %file%
SET /P "INPUT="
IF /I "%INPUT%"=="Exitcom$" goto Leave
IF /I "%INPUT%"=="Editlinecom$" goto crash
ECHO %INPUT% >> %file%
goto loop67

:smartartmakefile
CLS
ECHO Filename
ECHO ═════════
ECHO.
ECHO Enter filename
SET /P "FILE=░"
CLS
ECHO %_fYellow%Filename%_RESET%
ECHO ═════════
ECHO.
ECHO Enter filename
ECHO ░%file%░░
ECHO.
ECHO    Press any key!
pause > nul
echo Customization
echo ----------------------------------------------------------------------
echo      ██Art███     ▒▒▒▒Art▒▒▒▒▒▒
echo                   ▒▒▒▒Art2▒▒▒▒▒
echo                   ▒▒▒▒Art3▒▒▒▒▒
echo Press : A              B
CHOICE /C:AB /N /M ""
if errorlevel 2 (
    Goto smartartcustomize1
) else if errorlevel 1 (
    Goto smartartmain
)

:smartartcustomize1
CLS
ECHO Customization
ECHO -----------------------------------------------------------------------
ECHO Enter the text in Point 1
SET /P "r1="
ECHO Enter the text in Point 2
SET /P "r2="
ECHO Enter the text in Point 3
SET /P "r3="
ECHO Enter the text in Point 4
SET /P "r4="
ECHO. > %file%
goto makefile5009

:makefile5009
ECHO ▒▒%r1%▒▒▒▒▒▒ >> %file%
ECHO ▒▒%r2%▒▒▒▒▒▒ >> %file%
ECHO ▒▒%r3%▒▒▒▒▒▒ >> %file%
ECHO ▒▒%r4%▒▒▒▒▒▒ >> %file%
:loop5009
cls
echo %file%
ECHO -----------------------------------[Type Exitcom$ to exit]------------------------
TYPE %file%
SET /P "INPUT="
IF /I "%INPUT%"=="Exitcom$" goto Leave
IF /I "%INPUT%"=="imgcom$" goto crash
ECHO %INPUT% >> %file%
goto loop5009


:smartartmain
CLS
ECHO Customization
ECHO -----------------------------------------------------------------------
ECHO Enter the text in rectangle 1
SET /P "r1="
ECHO Enter the text in rectangle 2
SET /P "r2="
ECHO Enter the text in rectangle 3
SET /P "r3="
ECHO Enter the text in rectangle 4
SET /P "r4="
ECHO. > %file%
goto makefile5

:makefile5
ECHO ██%R1%████    █████%R2%██████ >> %FILE%
ECHO. >> %FILE%
ECHO ██%R3%████    █████%R4%██████ >> %FILE%
:loop5
cls
echo %file%
ECHO -----------------------------------[Type Exitcom$ to exit]------------------------
TYPE %file%
SET /P "INPUT="
IF /I "%INPUT%"=="Exitcom$" goto Leave
IF /I "%INPUT%"=="imgcom$" goto crash
ECHO %INPUT% >> %file%
goto loop5


:tablemakefile
CLS
ECHO Filename
ECHO ═════════
ECHO.
ECHO Enter filename
SET /P "FILE=░"
CLS
ECHO %_fYellow%Filename%_RESET%
ECHO ═════════
ECHO.
ECHO Enter filename
ECHO ░%file%░░
ECHO.
ECHO    Press any key!
pause > nul
CLS
ECHO Table row filling
ECHO -----------------------------------------------------------------------
ECHO Enter the text in A1 at line1
SET /P "A1="
ECHO Enter the text in B1 at line1
SET /P "B1="
ECHO Enter the text in C1 at line1
SET /P "C1="
ECHO Enter the text in D1 at line1
SET /P "D1="
ECHO Enter the text in A1 at line2
SET /P "A12="
ECHO Enter the text in B1 at line2
SET /P "B12="
ECHO Enter the text in C1 at line2
SET /P "C12="
ECHO Enter the text in D1 at line2
SET /P "D12="
ECHO. > "%file%"
goto makefile4

:makefile4
ECHO %A1% │ %B1% │ %C1% │ %D1% │ >> "%FILE%"
ECHO %A12%│ %B12%│ %C12%│ %D12%│ >> "%FILE%"
:loop4
cls
echo "%file%"
ECHO -----------------------------------[Type Exitcom$ to exit]------------------------
TYPE "%file%"
SET /P "INPUT="
IF /I "%INPUT%"=="Exitcom$" goto Leave
IF /I "%INPUT%"=="imgcom$" goto crash
ECHO %INPUT% >> "%file%"
goto loop4


:chartmakefile
CLS
ECHO Filename
ECHO ═════════
ECHO.
ECHO Enter filename
SET /P "FILE=░"
CLS
ECHO %_fYellow%Filename%_RESET%
ECHO ═════════
ECHO.
ECHO Enter filename
ECHO ░%file%░░
ECHO.
ECHO    Press any key!
pause > nul
ECHO. > "%file%"
goto makefile3

:makefile3
ECHO              ██ >> "%file%"
ECHO ██           ██ >> "%file%
ECHO ██           ██     ██ >> "%file%"
ECHO ██    ██     ██     ██ >> "%file%"
ECHO ██    ██     ██     ██ >> "%file%
:loop3
cls
echo %file%
ECHO -----------------------------------[Type Exitcom$ to exit]------------------------
TYPE %file%
SET /P "INPUT="
IF /I "%INPUT%"=="Exitcom$" goto Leave
IF /I "%INPUT%"=="imgcom$" goto crash
ECHO %INPUT% >> %file%
goto loop3

:makefile
CLS
ECHO Filename
ECHO ═════════
ECHO.
ECHO Enter filename
SET /P "FILE=░"
CLS
ECHO %_fYellow%Filename%_RESET%
ECHO ═════════
ECHO.
ECHO Enter filename
ECHO ░%file%░░
ECHO.
ECHO    Press any key!
pause > nul
ECHO. > %file%
goto makefile2

:makefile2
CLS
:loop1
CLS
ECHO %file%
ECHO -----------------------------------[Type Exitcom$ to exit]------------------------
TYPE %file%
SET /P "INPUT="
IF /I "%INPUT%"=="Exitcom$" goto Leave
IF /I "%INPUT%"=="Editlinecom$" goto crash
ECHO %INPUT% >> %file%
goto loop1

:Leave
CLS
ECHO Leave
ECHO ---------------------------------------------------------------------------------
ECHO.
ECHO. 
ECHO       Are you sure?
ECHO      [Y/N]
CHOICE /C:YN /N /M ""
if errorlevel 2 (
    Goto openfile2
) else if errorlevel 1 (
    exit
)

:openfile
CLS
ECHO Filename
ECHO ═════════
ECHO.
ECHO Enter filename
SET /P "FILE=░"
if exist %file% goto openfile2
cls
echo Error
echo ------------------------------
echo %_fBred%No file found
echo called %file% %_RESET%
pause > nul
cls
goto splashscreen

:openfile2
CLS
:loop2
CLS
ECHO %file%
ECHO -----------------------------------[Type Exitcom$ to exit]------------------------
TYPE %file%
SET /P "INPUT="
IF /I "%INPUT%"=="Exitcom$" goto Leave
IF /I "%INPUT%"=="Editlinecom$" goto crash
ECHO %INPUT% >> %file%
goto loop1

:crash
echo X=Msgbox("IKT has crashed! It may be caused by a bug. INFO: Cannot find label.", 0+16, "Crash") >> vbs.vbs
start vbs.vbs
exit

:sad
cls
echo       :(
echo          Why???????????????????????????????????????????????
timeout 0 > nul
exit



