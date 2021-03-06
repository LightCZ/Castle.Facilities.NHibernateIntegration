@ECHO OFF
REM ****************************************************************************
REM Copyright 2004-2013 Castle Project - http://www.castleproject.org/
REM Licensed under the Apache License, Version 2.0 (the "License");
REM you may not use this file except in compliance with the License.
REM You may obtain a copy of the License at
REM
REM     http://www.apache.org/licenses/LICENSE-2.0
REM
REM Unless required by applicable law or agreed to in writing, software
REM distributed under the License is distributed on an "AS IS" BASIS,
REM WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
REM See the License for the specific language governing permissions and
REM limitations under the License.
REM ****************************************************************************

ECHO This script builds the project in Release configuration

CALL buildscripts\build.cmd NET45 Package

IF %ERRORLEVEL% NEQ 0 GOTO err
ECHO **************************************************************
ECHO The binaries can be found in the following folder:
ECHO build\NET45\Release\Library
ECHO **************************************************************

CALL buildscripts\build.cmd NET40 Package

IF %ERRORLEVEL% NEQ 0 GOTO err
ECHO **************************************************************
ECHO The binaries can be found in the following folder:
ECHO build\NET40\Release\Library
ECHO **************************************************************

CALL buildscripts\build.cmd NET35 Package

IF %ERRORLEVEL% NEQ 0 GOTO err
ECHO **************************************************************
ECHO The binaries can be found in the following folder:
ECHO build\NET35\Release\Library
ECHO **************************************************************

:err
PAUSE
EXIT /B %ERRORLEVEL%
