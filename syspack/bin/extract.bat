@REM ----------------------------------------------------------------------------
@REM  Copyright 2001-2006 The Apache Software Foundation.
@REM
@REM  Licensed under the Apache License, Version 2.0 (the "License");
@REM  you may not use this file except in compliance with the License.
@REM  You may obtain a copy of the License at
@REM
@REM       http://www.apache.org/licenses/LICENSE-2.0
@REM
@REM  Unless required by applicable law or agreed to in writing, software
@REM  distributed under the License is distributed on an "AS IS" BASIS,
@REM  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@REM  See the License for the specific language governing permissions and
@REM  limitations under the License.
@REM ----------------------------------------------------------------------------
@REM
@REM   Copyright (c) 2001-2006 The Apache Software Foundation.  All rights
@REM   reserved.

@echo off

set ERROR_CODE=0

:init
@REM Decide how to startup depending on the version of windows

@REM -- Win98ME
if NOT "%OS%"=="Windows_NT" goto Win9xArg

@REM set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" @setlocal

@REM -- 4NT shell
if "%eval[2+2]" == "4" goto 4NTArgs

@REM -- Regular WinNT shell
set CMD_LINE_ARGS=%*
goto WinNTGetScriptDir

@REM The 4NT Shell from jp software
:4NTArgs
set CMD_LINE_ARGS=%$
goto WinNTGetScriptDir

:Win9xArg
@REM Slurp the command line arguments.  This loop allows for an unlimited number
@REM of arguments (up to the command line limit, anyway).
set CMD_LINE_ARGS=
:Win9xApp
if %1a==a goto Win9xGetScriptDir
set CMD_LINE_ARGS=%CMD_LINE_ARGS% %1
shift
goto Win9xApp

:Win9xGetScriptDir
set SAVEDIR=%CD%
%0\
cd %0\..\.. 
set BASEDIR=%CD%
cd %SAVEDIR%
set SAVE_DIR=
goto repoSetup

:WinNTGetScriptDir
set BASEDIR=%~dp0\..

:repoSetup
set REPO=


if "%JAVACMD%"=="" set JAVACMD=java

if "%REPO%"=="" set REPO=%BASEDIR%\repo

set CLASSPATH="%BASEDIR%"\etc;"%REPO%"\com\ibm\db2\db2jcc4\4.17.28\db2jcc4-4.17.28.jar;"%REPO%"\com\ibm\db2\db2jcc_license_cu\1.4.2\db2jcc_license_cu-1.4.2.jar;"%REPO%"\commons-cli\commons-cli\1.3.1\commons-cli-1.3.1.jar;"%REPO%"\org\slf4j\slf4j-api\1.7.21\slf4j-api-1.7.21.jar;"%REPO%"\ch\qos\logback\logback-classic\1.1.7\logback-classic-1.1.7.jar;"%REPO%"\ch\qos\logback\logback-core\1.1.7\logback-core-1.1.7.jar;"%REPO%"\org\slf4j\jcl-over-slf4j\1.7.21\jcl-over-slf4j-1.7.21.jar;"%REPO%"\org\apache\commons\commons-dbcp2\2.1.1\commons-dbcp2-2.1.1.jar;"%REPO%"\org\apache\commons\commons-pool2\2.4.2\commons-pool2-2.4.2.jar;"%REPO%"\commons-logging\commons-logging\1.2\commons-logging-1.2.jar;"%REPO%"\com\opencsv\opencsv\3.8\opencsv-3.8.jar;"%REPO%"\org\apache\commons\commons-lang3\3.4\commons-lang3-3.4.jar;"%REPO%"\commons-beanutils\commons-beanutils\1.9.2\commons-beanutils-1.9.2.jar;"%REPO%"\commons-collections\commons-collections\3.2.1\commons-collections-3.2.1.jar;"%REPO%"\org\springframework\spring-jdbc\4.3.2.RELEASE\spring-jdbc-4.3.2.RELEASE.jar;"%REPO%"\org\springframework\spring-beans\4.3.2.RELEASE\spring-beans-4.3.2.RELEASE.jar;"%REPO%"\org\springframework\spring-core\4.3.2.RELEASE\spring-core-4.3.2.RELEASE.jar;"%REPO%"\org\springframework\spring-tx\4.3.2.RELEASE\spring-tx-4.3.2.RELEASE.jar;"%REPO%"\org\springframework\spring-context\4.3.2.RELEASE\spring-context-4.3.2.RELEASE.jar;"%REPO%"\org\springframework\spring-aop\4.3.2.RELEASE\spring-aop-4.3.2.RELEASE.jar;"%REPO%"\org\springframework\spring-expression\4.3.2.RELEASE\spring-expression-4.3.2.RELEASE.jar;"%REPO%"\org\storm\syspack\1.0.0\syspack-1.0.0.jar

set ENDORSED_DIR=
if NOT "%ENDORSED_DIR%" == "" set CLASSPATH="%BASEDIR%"\%ENDORSED_DIR%\*;%CLASSPATH%

if NOT "%CLASSPATH_PREFIX%" == "" set CLASSPATH=%CLASSPATH_PREFIX%;%CLASSPATH%

@REM Reaching here means variables are defined and arguments have been captured
:endInit

%JAVACMD% %JAVA_OPTS% -Xms256m -Xmx2048m -classpath %CLASSPATH% -Dapp.name="extract" -Dapp.repo="%REPO%" -Dapp.home="%BASEDIR%" -Dbasedir="%BASEDIR%" org.storm.syspack.ExtractApp %CMD_LINE_ARGS%
if %ERRORLEVEL% NEQ 0 goto error
goto end

:error
if "%OS%"=="Windows_NT" @endlocal
set ERROR_CODE=%ERRORLEVEL%

:end
@REM set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" goto endNT

@REM For old DOS remove the set variables from ENV - we assume they were not set
@REM before we started - at least we don't leave any baggage around
set CMD_LINE_ARGS=
goto postExec

:endNT
@REM If error code is set to 1 then the endlocal was done already in :error.
if %ERROR_CODE% EQU 0 @endlocal


:postExec

if "%FORCE_EXIT_ON_ERROR%" == "on" (
  if %ERROR_CODE% NEQ 0 exit %ERROR_CODE%
)

exit /B %ERROR_CODE%
