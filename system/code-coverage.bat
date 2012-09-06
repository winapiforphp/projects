@ECHO OFF
REM TO USE: requires Visual studio performance tools - namely vsintr.exe and VSPerfCmd.exe
REM change the PERFORMANCE_TOOLS path below to where your tools are located and run, a .coverage file will be generated
REM you may then open this with visual studio to view the code coverage

SET CURRENT=%~dp0
SET PERFORMANCE_TOOLS=C:\Program Files (x86)\Microsoft Visual Studio 9.0\Team Tools\Performance Tools\
SET TEST_PHP_EXECUTABLE=%CURRENT%\..\binaries\x86\Debug_TS\php.exe

call "%PERFORMANCE_TOOLS%\vsinstr.exe" /coverage ..\Debug_TS\php_winsystem.dll
call "%PERFORMANCE_TOOLS%\VSPerfCmd.exe" -start:coverage -output:php_winsystem.coverage
call %TEST_PHP_EXECUTABLE% "%CURRENT%\..\binaries\run-tests.php" -d extension_dir="%CURRENT%\..\Debug_TS" -d extension=php_winsystem.dll "%CURRENT%\..\..\system\tests"

call "%PERFORMANCE_TOOLS%\VSPerfCmd.exe" -shutdown

pause