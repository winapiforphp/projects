@ECHO OFF
SET CURRENT=%~dp0

SET TEST_PHP_EXECUTABLE=%CURRENT%\..\binaries\PHP-5.4-7-dev-x86-debug-ts\php.exe

call %TEST_PHP_EXECUTABLE% "%CD%\..\binaries\run-tests.php" -d extension_dir="%CURRENT%\..\Debug" -d extension=php_winsystem.dll "%CURRENT%\..\..\system\tests"

pause