@ECHO OFF
SET CURRENT=%~dp0

SET TEST_PHP_EXECUTABLE=%CURRENT%\..\binaries\x86\Debug_TS\php.exe

call %TEST_PHP_EXECUTABLE% "%CURRENT%\..\binaries\run-tests.php" -d extension_dir="%CURRENT%\..\Debug_TS" -d extension=php_winsystem.dll "%CURRENT%\..\..\system\tests"

pause