@ECHO OFF
SET CURRENT=%~dp0

SET TEST_PHP_EXECUTABLE=%CURRENT%\..\binaries\x64\Debug\php.exe
SET TEST_PHP=%CURRENT%\..\binaries\x64\Release\php.exe

call %TEST_PHP% "%CURRENT%\..\binaries\run-tests.php" -d extension_dir="%CURRENT%\..\x64\Debug" -d extension=php_winsystem.dll "%CURRENT%\..\..\system\tests"

pause