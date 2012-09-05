@ECHO OFF
REM THis script is designed to update binaries easily
REM Will build a stripped down PHP (disable-all) in two arches in four flavors
REM then copy files and copy headers to the correct locations

:BEGIN
ECHO Beginning winapiforphp PHP update

:SETUP
ECHO Setting Environment Variables
SET START=%~dp0
CD C:\Users\auroraeosrose\Documents\GitHub\php-src

CALL "C:\Program Files (x86)\Microsoft Visual Studio 9.0\VC\vcvarsall.bat" x86
SET PATH=C:\Users\auroraeosrose\Documents\Tools\bin;%PATH% 

ECHO Cleaning old builds
rmdir /s /q Release
rmdir /s /q Release_TS
rmdir /s /q Debug
rmdir /s /q Debug_TS
del /q *."sbr"

ECHO building configure
CALL buildconf.bat

ECHO Building PHP DEBUG_TS
CALL configure.bat --disable-all --enable-debug --enable-crt-debug --enable-cli
nmake

ECHO Building PHP DEBUG
CALL configure.bat --disable-all --disable-zts --enable-debug --enable-crt-debug --enable-cli
nmake

ECHO Building PHP RELEASE_TS
CALL configure.bat --disable-all --enable-debug-pack --enable-cli
nmake

ECHO Building PHP RELEASE
CALL configure.bat --disable-all --disable-zts --enable-debug-pack --enable-cli
nmake

ECHO Copying Files
CD Release_TS
xcopy /q /y /i php*.exe %START%\x86\Release_TS
xcopy /q /y /i *.lib %START%\x86\Release_TS
xcopy /q /y /i *.dll %START%\x86\Release_TS
xcopy /q /y /i *.pdb %START%\x86\Release_TS
CD ../Release
xcopy /q /y /i php*.exe %START%\x86\Release
xcopy /q /y /i *.lib %START%\x86\Release
xcopy /q /y /i *.dll %START%\x86\Release
xcopy /q /y /i *.pdb %START%\x86\Release
CD ../Debug_TS
xcopy /q /y /i php*.exe %START%\x86\Debug_TS
xcopy /q /y /i *.lib %START%\x86\Debug_TS
xcopy /q /y /i *.dll %START%\x86\Debug_TS
xcopy /q /y /i *.pdb %START%\x86\Debug_TS
CD ../Debug
xcopy /q /y /i php*.exe %START%\x86\Debug
xcopy /q /y /i *.lib %START%\x86\Debug
xcopy /q /y /i *.dll %START%\x86\Debug
xcopy /q /y /i *.pdb %START%\x86\Debug
CD ../

ECHO Copying Headers
CD TSRM
xcopy /q /y /i *.h %START%\include\TSRM
CD ../Zend
xcopy /q /y /i *.h %START%\include\Zend
CD ../win32
xcopy /q /y /i *.h %START%\include\win32
CD ../main
xcopy /q /y /i *.h %START%\include\main
CD streams
xcopy /q /y /i *.h %START%\include\main\streams
CD ../../ext\standard
xcopy /q /y /i *.h %START%\include\ext\standard
CD ../../ext\spl
xcopy /q /y /i *.h %START%\include\ext\spl
CD ../../
xcopy /q /y /i run-tests.php %START%\run-tests.php

CALL "C:\Program Files (x86)\Microsoft Visual Studio 9.0\VC\vcvarsall.bat" x64
SET PATH=C:\Users\auroraeosrose\Documents\Tools\bin;%PATH%
CD C:\Users\auroraeosrose\Documents\GitHub\php-src

ECHO Cleaning old builds
rmdir /s /q x64
del /q *."sbr"

ECHO building configure
CALL buildconf.bat

ECHO Building PHP DEBUG_TS
CALL configure.bat --disable-all --enable-debug --enable-crt-debug --enable-cli
nmake

ECHO Building PHP DEBUG
CALL configure.bat --disable-all --disable-zts --enable-debug --enable-crt-debug --enable-cli
nmake

ECHO Building PHP RELEASE_TS
CALL configure.bat --disable-all --enable-debug-pack --enable-cli
nmake

ECHO Building PHP RELEASE
CALL configure.bat --disable-all --disable-zts --enable-debug-pack --enable-cli
nmake

ECHO Copying Files
CD x64\Release_TS
xcopy /q /y /i php*.exe %START%\x64\Release_TS
xcopy /q /y /i *.lib %START%\x64\Release_TS
xcopy /q /y /i *.dll %START%\x64\Release_TS
xcopy /q /y /i *.pdb %START%\x64\Release_TS
CD ..\Release
xcopy /q /y /i php*.exe %START%\x64\Release
xcopy /q /y /i *.lib %START%\x64\Release
xcopy /q /y /i *.dll %START%\x64\Release
xcopy /q /y /i *.pdb %START%\x64\Release
CD ..\Debug_TS
xcopy /q /y /i php*.exe %START%\x64\Debug_TS
xcopy /q /y /i *.lib %START%\x64\Debug_TS
xcopy /q /y /i *.dll %START%\x64\Debug_TS
xcopy /q /y /i *.pdb %START%\x64\Debug_TS
CD ..\Debug
xcopy /q /y /i php*.exe %START%\x64\Debug
xcopy /q /y /i *.lib %START%\x64\Debug
xcopy /q /y /i *.dll %START%\x64\Debug
xcopy /q /y /i *.pdb %START%\x64\Debug
CD ../