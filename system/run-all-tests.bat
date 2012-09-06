@ECHO OFF
SET CURRENT=%~dp0

SET TEST_PHP_EXECUTABLE=%CURRENT%\..\binaries\x86\Release\php.exe

call %TEST_PHP_EXECUTABLE% "%CURRENT%\..\binaries\run-tests.php" -d extension_dir="%CURRENT%\..\Release" -d extension=php_winsystem.dll "%CURRENT%\..\..\system\tests"

pause

SET TEST_PHP_EXECUTABLE=%CURRENT%\..\binaries\x86\Release_TS\php.exe

call %TEST_PHP_EXECUTABLE% "%CURRENT%\..\binaries\run-tests.php" -d extension_dir="%CURRENT%\..\Release_TS" -d extension=php_winsystem.dll "%CURRENT%\..\..\system\tests"

pause

SET TEST_PHP_EXECUTABLE=%CURRENT%\..\binaries\x86\Debug\php.exe

call %TEST_PHP_EXECUTABLE% "%CURRENT%\..\binaries\run-tests.php" -d extension_dir="%CURRENT%\..\Debug" -d extension=php_winsystem.dll "%CURRENT%\..\..\system\tests"

pause

SET TEST_PHP_EXECUTABLE=%CURRENT%\..\binaries\x86\Debug_TS\php.exe

call %TEST_PHP_EXECUTABLE% "%CURRENT%\..\binaries\run-tests.php" -d extension_dir="%CURRENT%\..\Debug_TS" -d extension=php_winsystem.dll "%CURRENT%\..\..\system\tests"

pause

SET TEST_PHP_EXECUTABLE=%CURRENT%\..\binaries\x64\Release\php.exe

call %TEST_PHP_EXECUTABLE% "%CURRENT%\..\binaries\run-tests.php" -d extension_dir="%CURRENT%\..\x64\Release" -d extension=php_winsystem.dll "%CURRENT%\..\..\system\tests"

pause

SET TEST_PHP_EXECUTABLE=%CURRENT%\..\binaries\x64\Release_TS\php.exe

call %TEST_PHP_EXECUTABLE% "%CURRENT%\..\binaries\run-tests.php" -d extension_dir="%CURRENT%\..\x64\Release_TS" -d extension=php_winsystem.dll "%CURRENT%\..\..\system\tests"

pause

SET TEST_PHP_EXECUTABLE=%CURRENT%\..\binaries\x64\Debug\php.exe

call %TEST_PHP_EXECUTABLE% "%CURRENT%\..\binaries\run-tests.php" -d extension_dir="%CURRENT%\..\x64\Debug" -d extension=php_winsystem.dll "%CURRENT%\..\..\system\tests"

pause

SET TEST_PHP_EXECUTABLE=%CURRENT%\..\binaries\x64\Debug_TS\php.exe

call %TEST_PHP_EXECUTABLE% "%CURRENT%\..\binaries\run-tests.php" -d extension_dir="%CURRENT%\..\x64\Debug_TS" -d extension=php_winsystem.dll "%CURRENT%\..\..\system\tests"

pause