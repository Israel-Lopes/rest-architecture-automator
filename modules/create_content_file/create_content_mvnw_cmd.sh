#!/bin/bash

echo '@REM ----------------------------------------------------------------------------' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM Licensed to the Apache Software Foundation (ASF) under one' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM or more contributor license agreements.  See the NOTICE file' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM distributed with this work for additional information' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM regarding copyright ownership.  The ASF licenses this file' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM to you under the Apache License, Version 2.0 (the' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM "License"); you may not use this file except in compliance' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM with the License.  You may obtain a copy of the License at' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM    https://www.apache.org/licenses/LICENSE-2.0' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM Unless required by applicable law or agreed to in writing,' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM software distributed under the License is distributed on an' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM KIND, either express or implied.  See the License for the' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM specific language governing permissions and limitations' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM under the License.' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM ----------------------------------------------------------------------------' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM ----------------------------------------------------------------------------' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM Maven Start Up Batch script' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM Required ENV vars:' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM JAVA_HOME - location of a JDK home dir' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM Optional ENV vars' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM M2_HOME - location of maven2s installed home dir' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM MAVEN_BATCH_ECHO - set to on to enable the echoing of the batch commands' >> ./$PROJECT_NAME/mvnw.cmd
echo 'echo @REM MAVEN_BATCH_PAUSE - set to 'on' to wait for a keystroke before ending' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM MAVEN_OPTS - parameters passed to the Java VM when running Maven' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM     e.g. to debug Maven itself, use' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM set MAVEN_OPTS=-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=8000' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM MAVEN_SKIP_RC - flag to disable loading of mavenrc files' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM ----------------------------------------------------------------------------' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM Begin all REM lines with '@' in case MAVEN_BATCH_ECHO is 'on'' >> ./$PROJECT_NAME/mvnw.cmd
echo '@echo off' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM set title of command window' >> ./$PROJECT_NAME/mvnw.cmd
echo 'title %0' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM enable echoing by setting MAVEN_BATCH_ECHO to 'on'' >> ./$PROJECT_NAME/mvnw.cmd
echo '@if "%MAVEN_BATCH_ECHO%" == "on"  echo %MAVEN_BATCH_ECHO%' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM set %HOME% to equivalent of $HOME' >> ./$PROJECT_NAME/mvnw.cmd
echo 'if "%HOME%" == "" (set "HOME=%HOMEDRIVE%%HOMEPATH%")' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM Execute a user defined script before this one' >> ./$PROJECT_NAME/mvnw.cmd
echo 'if not "%MAVEN_SKIP_RC%" == "" goto skipRcPre' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM check for pre script, once with legacy .bat ending and once with .cmd ending' >> ./$PROJECT_NAME/mvnw.cmd
echo 'if exist "%USERPROFILE%\mavenrc_pre.bat" call "%USERPROFILE%\mavenrc_pre.bat" %*' >> ./$PROJECT_NAME/mvnw.cmd
echo 'if exist "%USERPROFILE%\mavenrc_pre.cmd" call "%USERPROFILE%\mavenrc_pre.cmd" %*' >> ./$PROJECT_NAME/mvnw.cmd
echo ':skipRcPre' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo '@setlocal' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo 'set ERROR_CODE=0' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM To isolate internal variables from possible post scripts, we use another setlocal' >> ./$PROJECT_NAME/mvnw.cmd
echo '@setlocal' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM ==== START VALIDATION ====' >> ./$PROJECT_NAME/mvnw.cmd
echo 'if not "%JAVA_HOME%" == "" goto OkJHome' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo 'echo.' >> ./$PROJECT_NAME/mvnw.cmd
echo 'echo Error: JAVA_HOME not found in your environment. >&2' >> ./$PROJECT_NAME/mvnw.cmd
echo 'echo Please set the JAVA_HOME variable in your environment to match the >&2' >> ./$PROJECT_NAME/mvnw.cmd
echo 'echo location of your Java installation. >&2' >> ./$PROJECT_NAME/mvnw.cmd
echo 'echo.' >> ./$PROJECT_NAME/mvnw.cmd
echo 'goto error' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo ':OkJHome' >> ./$PROJECT_NAME/mvnw.cmd
echo 'if exist "%JAVA_HOME%\bin\java.exe" goto init' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo 'echo.' >> ./$PROJECT_NAME/mvnw.cmd
echo 'echo Error: JAVA_HOME is set to an invalid directory. >&2' >> ./$PROJECT_NAME/mvnw.cmd
echo 'echo JAVA_HOME = "%JAVA_HOME%" >&2' >> ./$PROJECT_NAME/mvnw.cmd
echo 'echo Please set the JAVA_HOME variable in your environment to match the >&2' >> ./$PROJECT_NAME/mvnw.cmd
echo 'echo location of your Java installation. >&2' >> ./$PROJECT_NAME/mvnw.cmd
echo 'echo.' >> ./$PROJECT_NAME/mvnw.cmd
echo 'goto error' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM ==== END VALIDATION ====' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo ':init' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM Find the project base dir, i.e. the directory that contains the folder ".mvn".' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM Fallback to current working directory if not found.' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo 'set MAVEN_PROJECTBASEDIR=%MAVEN_BASEDIR%' >> ./$PROJECT_NAME/mvnw.cmd
echo 'IF NOT "%MAVEN_PROJECTBASEDIR%"=="" goto endDetectBaseDir' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo 'set EXEC_DIR=%CD%' >> ./$PROJECT_NAME/mvnw.cmd
echo 'set WDIR=%EXEC_DIR%' >> ./$PROJECT_NAME/mvnw.cmd
echo ':findBaseDir' >> ./$PROJECT_NAME/mvnw.cmd
echo 'IF EXIST "%WDIR%"\.mvn goto baseDirFound' >> ./$PROJECT_NAME/mvnw.cmd
echo 'cd ..' >> ./$PROJECT_NAME/mvnw.cmd
echo 'IF "%WDIR%"=="%CD%" goto baseDirNotFound' >> ./$PROJECT_NAME/mvnw.cmd
echo 'set WDIR=%CD%' >> ./$PROJECT_NAME/mvnw.cmd
echo 'goto findBaseDir' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo ':baseDirFound' >> ./$PROJECT_NAME/mvnw.cmd
echo 'set MAVEN_PROJECTBASEDIR=%WDIR%' >> ./$PROJECT_NAME/mvnw.cmd
echo 'cd "%EXEC_DIR%"' >> ./$PROJECT_NAME/mvnw.cmd
echo 'goto endDetectBaseDir' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo ':baseDirNotFound' >> ./$PROJECT_NAME/mvnw.cmd
echo 'set MAVEN_PROJECTBASEDIR=%EXEC_DIR%' >> ./$PROJECT_NAME/mvnw.cmd
echo 'cd "%EXEC_DIR%"' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo ':endDetectBaseDir' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo 'IF NOT EXIST "%MAVEN_PROJECTBASEDIR%\.mvn\jvm.config" goto endReadAdditionalConfig' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo '@setlocal EnableExtensions EnableDelayedExpansion' >> ./$PROJECT_NAME/mvnw.cmd
echo 'for /F "usebackq delims=" %%a in ("%MAVEN_PROJECTBASEDIR%\.mvn\jvm.config") do set JVM_CONFIG_MAVEN_PROPS=!JVM_CONFIG_MAVEN_PROPS! %%a' >> ./$PROJECT_NAME/mvnw.cmd
echo '@endlocal & set JVM_CONFIG_MAVEN_PROPS=%JVM_CONFIG_MAVEN_PROPS%' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo ':endReadAdditionalConfig' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo 'SET MAVEN_JAVA_EXE="%JAVA_HOME%\bin\java.exe"' >> ./$PROJECT_NAME/mvnw.cmd
echo 'set WRAPPER_JAR="%MAVEN_PROJECTBASEDIR%\.mvn\wrapper\maven-wrapper.jar"' >> ./$PROJECT_NAME/mvnw.cmd
echo 'set WRAPPER_LAUNCHER=org.apache.maven.wrapper.MavenWrapperMain' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo 'set DOWNLOAD_URL="https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.1.0/maven-wrapper-3.1.0.jar"' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo 'FOR /F "usebackq tokens=1,2 delims==" %%A IN ("%MAVEN_PROJECTBASEDIR%\.mvn\wrapper\maven-wrapper.properties") DO (' >> ./$PROJECT_NAME/mvnw.cmd
echo '    IF "%%A"=="wrapperUrl" SET DOWNLOAD_URL=%%B' >> ./$PROJECT_NAME/mvnw.cmd
echo ')' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM Extension to allow automatically downloading the maven-wrapper.jar from Maven-central' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM This allows using the maven wrapper in projects that prohibit checking in binary data.' >> ./$PROJECT_NAME/mvnw.cmd
echo 'if exist %WRAPPER_JAR% (' >> ./$PROJECT_NAME/mvnw.cmd
echo '    if "%MVNW_VERBOSE%" == "true" (' >> ./$PROJECT_NAME/mvnw.cmd
echo '        echo Found %WRAPPER_JAR%' >> ./$PROJECT_NAME/mvnw.cmd
echo '    )' >> ./$PROJECT_NAME/mvnw.cmd
echo ') else (' >> ./$PROJECT_NAME/mvnw.cmd
echo '    if not "%MVNW_REPOURL%" == "" (' >> ./$PROJECT_NAME/mvnw.cmd
echo '        SET DOWNLOAD_URL="%MVNW_REPOURL%/org/apache/maven/wrapper/maven-wrapper/3.1.0/maven-wrapper-3.1.0.jar"' >> ./$PROJECT_NAME/mvnw.cmd
echo '    )' >> ./$PROJECT_NAME/mvnw.cmd
echo '    if "%MVNW_VERBOSE%" == "true" (' >> ./$PROJECT_NAME/mvnw.cmd
echo "        echo Couldn't find %WRAPPER_JAR%, downloading it ..." >> ./$PROJECT_NAME/mvnw.cmd
echo '        echo Downloading from: %DOWNLOAD_URL%' >> ./$PROJECT_NAME/mvnw.cmd
echo '    )' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo '    powershell -Command "&{' >> ./$PROJECT_NAME/mvnw.cmd
echo '        $webclient = new-object System.Net.WebClient;' >> ./$PROJECT_NAME/mvnw.cmd
echo '        if (-not ([string]::IsNullOrEmpty('%MVNW_USERNAME%') -and [string]::IsNullOrEmpty('%MVNW_PASSWORD%'))) {' >> ./$PROJECT_NAME/mvnw.cmd
echo '            $webclient.Credentials = new-object System.Net.NetworkCredential('%MVNW_USERNAME%', '%MVNW_PASSWORD%');' >> ./$PROJECT_NAME/mvnw.cmd
echo '        }' >> ./$PROJECT_NAME/mvnw.cmd
echo '        [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; $webclient.DownloadFile('%DOWNLOAD_URL%', '%WRAPPER_JAR%')' >> ./$PROJECT_NAME/mvnw.cmd
echo '    }"' >> ./$PROJECT_NAME/mvnw.cmd
echo '    if "%MVNW_VERBOSE%" == "true" (' >> ./$PROJECT_NAME/mvnw.cmd
echo '        echo Finished downloading %WRAPPER_JAR%' >> ./$PROJECT_NAME/mvnw.cmd
echo '    )' >> ./$PROJECT_NAME/mvnw.cmd
echo ')' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM End of extension' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM Provide a "standardized" way to retrieve the CLI args that will' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM work with both Windows and non-Windows executions.' >> ./$PROJECT_NAME/mvnw.cmd
echo 'set MAVEN_CMD_LINE_ARGS=%*' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo '%MAVEN_JAVA_EXE% ^' >> ./$PROJECT_NAME/mvnw.cmd
echo '  %JVM_CONFIG_MAVEN_PROPS% ^' >> ./$PROJECT_NAME/mvnw.cmd
echo '  %MAVEN_OPTS% ^' >> ./$PROJECT_NAME/mvnw.cmd
echo '  %MAVEN_DEBUG_OPTS% ^' >> ./$PROJECT_NAME/mvnw.cmd
echo '  -classpath %WRAPPER_JAR% ^' >> ./$PROJECT_NAME/mvnw.cmd
echo '  "-Dmaven.multiModuleProjectDirectory=%MAVEN_PROJECTBASEDIR%" ^' >> ./$PROJECT_NAME/mvnw.cmd
echo '  %WRAPPER_LAUNCHER% %MAVEN_CONFIG% %*' >> ./$PROJECT_NAME/mvnw.cmd
echo 'if ERRORLEVEL 1 goto error' >> ./$PROJECT_NAME/mvnw.cmd
echo 'goto end' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo ':error' >> ./$PROJECT_NAME/mvnw.cmd
echo 'set ERROR_CODE=1' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo ':end' >> ./$PROJECT_NAME/mvnw.cmd
echo '@endlocal & set ERROR_CODE=%ERROR_CODE%' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo 'if not "%MAVEN_SKIP_RC%"=="" goto skipRcPost' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM check for post script, once with legacy .bat ending and once with .cmd ending' >> ./$PROJECT_NAME/mvnw.cmd
echo 'if exist "%USERPROFILE%\mavenrc_post.bat" call "%USERPROFILE%\mavenrc_post.bat"' >> ./$PROJECT_NAME/mvnw.cmd
echo 'if exist "%USERPROFILE%\mavenrc_post.cmd" call "%USERPROFILE%\mavenrc_post.cmd"' >> ./$PROJECT_NAME/mvnw.cmd
echo ':skipRcPost' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo '@REM pause the script if MAVEN_BATCH_PAUSE is set to 'on'' >> ./$PROJECT_NAME/mvnw.cmd
echo 'if "%MAVEN_BATCH_PAUSE%"=="on" pause' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo 'if "%MAVEN_TERMINATE_CMD%"=="on" exit %ERROR_CODE%' >> ./$PROJECT_NAME/mvnw.cmd
echo '' >> ./$PROJECT_NAME/mvnw.cmd
echo 'cmd /C exit /B %ERROR_CODE%' >> ./$PROJECT_NAME/mvnw.cmd