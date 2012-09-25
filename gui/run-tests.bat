@ECHO OFF
SET CURRENT=%~dp0

SET TEST_PHP_EXECUTABLE=%CURRENT%\..\binaries\x86\Debug_TS\php.exe

call %TEST_PHP_EXECUTABLE% "%CURRENT%\..\binaries\run-tests.php" "%CURRENT%\..\..\gui\tests\Window"

pause