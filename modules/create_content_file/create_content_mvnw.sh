#!/bin/bash

echo '#!/bin/bash

echo '#!/bin/sh
echo '# ----------------------------------------------------------------------------
echo '# Licensed to the Apache Software Foundation (ASF) under one
echo '# or more contributor license agreements.  See the NOTICE file
echo '# distributed with this work for additional information
echo '# regarding copyright ownership.  The ASF licenses this file
echo '# to you under the Apache License, Version 2.0 (the
echo '# "License"); you may not use this file except in compliance
echo '# with the License.  You may obtain a copy of the License at
echo '#
echo '#    https://www.apache.org/licenses/LICENSE-2.0
echo '#
echo '# Unless required by applicable law or agreed to in writing,
echo '# software distributed under the License is distributed on an
echo '# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
echo '# KIND, either express or implied.  See the License for the
echo '# specific language governing permissions and limitations
echo '# under the License.
echo '# ----------------------------------------------------------------------------
echo '
echo '# ----------------------------------------------------------------------------
echo '# Maven Start Up Batch script
echo '#
echo '# Required ENV vars:
echo '# ------------------
echo '#   JAVA_HOME - location of a JDK home dir
echo '#
echo '# Optional ENV vars
echo '# -----------------
echo '#   M2_HOME - location of maven2's installed home dir
echo '#   MAVEN_OPTS - parameters passed to the Java VM when running Maven
echo '#     e.g. to debug Maven itself, use
echo '#       set MAVEN_OPTS=-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=8000
echo '#   MAVEN_SKIP_RC - flag to disable loading of mavenrc files
echo '# ----------------------------------------------------------------------------
echo '
echo 'if [ -z "$MAVEN_SKIP_RC" ] ; then
echo '
echo '  if [ -f /usr/local/etc/mavenrc ] ; then
echo '    . /usr/local/etc/mavenrc
echo '  fi
echo '
echo '  if [ -f /etc/mavenrc ] ; then
echo '    . /etc/mavenrc
echo '  fi
echo '
echo '  if [ -f "$HOME/.mavenrc" ] ; then
echo '    . "$HOME/.mavenrc"
echo '  fi
echo '
echo 'fi
echo '
echo '# OS specific support.  $var _must_ be set to either true or false.
echo 'cygwin=false;
echo 'darwin=false;
echo 'mingw=false
echo 'case "`uname`" in
echo '  CYGWIN*) cygwin=true ;;
echo '  MINGW*) mingw=true;;
echo '  Darwin*) darwin=true
echo '    # Use /usr/libexec/java_home if available, otherwise fall back to /Library/Java/Home
echo '    # See https://developer.apple.com/library/mac/qa/qa1170/_index.html
echo '    if [ -z "$JAVA_HOME" ]; then
echo '      if [ -x "/usr/libexec/java_home" ]; then
echo '        export JAVA_HOME="`/usr/libexec/java_home`"
echo '      else
echo '        export JAVA_HOME="/Library/Java/Home"
echo '      fi
echo '    fi
echo '    ;;
echo 'esac
echo '
echo 'if [ -z "$JAVA_HOME" ] ; then
echo '  if [ -r /etc/gentoo-release ] ; then
echo '    JAVA_HOME=`java-config --jre-home`
echo '  fi
echo 'fi
echo '
echo 'if [ -z "$M2_HOME" ] ; then
echo '  ## resolve links - $0 may be a link to maven's home
echo '  PRG="$0"
echo '
echo '  # need this for relative symlinks
echo '  while [ -h "$PRG" ] ; do
echo '    ls=`ls -ld "$PRG"`
echo '    link=`expr "$ls" : '.*-> \(.*\)$'`
echo '    if expr "$link" : '/.*' > /dev/null; then
echo '      PRG="$link"
echo '    else
echo '      PRG="`dirname "$PRG"`/$link"
echo '    fi
echo '  done
echo '
echo '  saveddir=`pwd`
echo '
echo '  M2_HOME=`dirname "$PRG"`/..
echo '
echo '  # make it fully qualified
echo '  M2_HOME=`cd "$M2_HOME" && pwd`
echo '
echo '  cd "$saveddir"
echo '  # echo Using m2 at $M2_HOME
echo 'fi
echo '
echo '# For Cygwin, ensure paths are in UNIX format before anything is touched
echo 'if $cygwin ; then
echo '  [ -n "$M2_HOME" ] &&
echo '    M2_HOME=`cygpath --unix "$M2_HOME"`
echo '  [ -n "$JAVA_HOME" ] &&
echo '    JAVA_HOME=`cygpath --unix "$JAVA_HOME"`
echo '  [ -n "$CLASSPATH" ] &&
echo '    CLASSPATH=`cygpath --path --unix "$CLASSPATH"`
echo 'fi
echo '
echo '# For Mingw, ensure paths are in UNIX format before anything is touched
echo 'if $mingw ; then
echo '  [ -n "$M2_HOME" ] &&
echo '    M2_HOME="`(cd "$M2_HOME"; pwd)`"
echo '  [ -n "$JAVA_HOME" ] &&
echo '    JAVA_HOME="`(cd "$JAVA_HOME"; pwd)`"
echo 'fi
echo '
echo 'if [ -z "$JAVA_HOME" ]; then
echo '  javaExecutable="`which javac`"
echo '  if [ -n "$javaExecutable" ] && ! [ "`expr \"$javaExecutable\" : '\([^ ]*\)'`" = "no" ]; then
echo '    # readlink(1) is not available as standard on Solaris 10.
echo '    readLink=`which readlink`
echo '    if [ ! `expr "$readLink" : '\([^ ]*\)'` = "no" ]; then
echo '      if $darwin ; then
echo '        javaHome="`dirname \"$javaExecutable\"`"
echo '        javaExecutable="`cd \"$javaHome\" && pwd -P`/javac"
echo '      else
echo '        javaExecutable="`readlink -f \"$javaExecutable\"`"
echo '      fi
echo '      javaHome="`dirname \"$javaExecutable\"`"
echo '      javaHome=`expr "$javaHome" : '\(.*\)/bin'`
echo '      JAVA_HOME="$javaHome"
echo '      export JAVA_HOME
echo '    fi
echo '  fi
echo 'fi
echo '
echo 'if [ -z "$JAVACMD" ] ; then
echo '  if [ -n "$JAVA_HOME"  ] ; then
echo '    if [ -x "$JAVA_HOME/jre/sh/java" ] ; then
echo '      # IBM's JDK on AIX uses strange locations for the executables
echo '      JAVACMD="$JAVA_HOME/jre/sh/java"
echo '    else
echo '      JAVACMD="$JAVA_HOME/bin/java"
echo '    fi
echo '  else
echo '    JAVACMD="`\\unset -f command; \\command -v java`"
echo '  fi
echo 'fi
echo '
echo 'if [ ! -x "$JAVACMD" ] ; then
echo '  echo "Error: JAVA_HOME is not defined correctly." >&2
echo '  echo "  We cannot execute $JAVACMD" >&2
echo '  exit 1
echo 'fi
echo '
echo 'if [ -z "$JAVA_HOME" ] ; then
echo '  echo "Warning: JAVA_HOME environment variable is not set."
echo 'fi
echo '
echo 'CLASSWORLDS_LAUNCHER=org.codehaus.plexus.classworlds.launcher.Launcher
echo '
echo '# traverses directory structure from process work directory to filesystem root
echo '# first directory with .mvn subdirectory is considered project base directory
echo 'find_maven_basedir() {
echo '
echo '  if [ -z "$1" ]
echo '  then
echo '    echo "Path not specified to find_maven_basedir"
echo '    return 1
echo '  fi
echo '
echo '  basedir="$1"
echo '  wdir="$1"
echo '  while [ "$wdir" != '/' ] ; do
echo '    if [ -d "$wdir"/.mvn ] ; then
echo '      basedir=$wdir
echo '      break
echo '    fi
echo '    # workaround for JBEAP-8937 (on Solaris 10/Sparc)
echo '    if [ -d "${wdir}" ]; then
echo '      wdir=`cd "$wdir/.."; pwd`
echo '    fi
echo '    # end of workaround
echo '  done
echo '  echo "${basedir}"
echo '}
echo '
echo '# concatenates all lines of a file
echo 'concat_lines() {
echo '  if [ -f "$1" ]; then
echo '    echo "$(tr -s '\n' ' ' < "$1")"
echo '  fi
echo '}
echo '
echo 'BASE_DIR=`find_maven_basedir "$(pwd)"`
echo 'if [ -z "$BASE_DIR" ]; then
echo '  exit 1;
echo 'fi
echo '
echo '##########################################################################################
echo '# Extension to allow automatically downloading the maven-wrapper.jar from Maven-central
echo '# This allows using the maven wrapper in projects that prohibit checking in binary data.
echo '##########################################################################################
echo 'if [ -r "$BASE_DIR/.mvn/wrapper/maven-wrapper.jar" ]; then
echo '    if [ "$MVNW_VERBOSE" = true ]; then
echo '      echo "Found .mvn/wrapper/maven-wrapper.jar"
echo '    fi
echo 'else
echo '    if [ "$MVNW_VERBOSE" = true ]; then
echo '      echo "Couldn't find .mvn/wrapper/maven-wrapper.jar, downloading it ..."
echo '    fi
echo '    if [ -n "$MVNW_REPOURL" ]; then
echo '      jarUrl="$MVNW_REPOURL/org/apache/maven/wrapper/maven-wrapper/3.1.0/maven-wrapper-3.1.0.jar"
echo '    else
echo '      jarUrl="https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.1.0/maven-wrapper-3.1.0.jar"
echo '    fi
echo '    while IFS="=" read key value; do
echo '      case "$key" in (wrapperUrl) jarUrl="$value"; break ;;
echo '      esac
echo '    done < "$BASE_DIR/.mvn/wrapper/maven-wrapper.properties"
echo '    if [ "$MVNW_VERBOSE" = true ]; then
echo '      echo "Downloading from: $jarUrl"
echo '    fi
echo '    wrapperJarPath="$BASE_DIR/.mvn/wrapper/maven-wrapper.jar"
echo '    if $cygwin; then
echo '      wrapperJarPath=`cygpath --path --windows "$wrapperJarPath"`
echo '    fi
echo '
echo '    if command -v wget > /dev/null; then
echo '        if [ "$MVNW_VERBOSE" = true ]; then
echo '          echo "Found wget ... using wget"
echo '        fi
echo '        if [ -z "$MVNW_USERNAME" ] || [ -z "$MVNW_PASSWORD" ]; then
echo '            wget "$jarUrl" -O "$wrapperJarPath" || rm -f "$wrapperJarPath"
echo '        else
echo '            wget --http-user=$MVNW_USERNAME --http-password=$MVNW_PASSWORD "$jarUrl" -O "$wrapperJarPath" || rm -f "$wrapperJarPath"
echo '        fi
echo '    elif command -v curl > /dev/null; then
echo '        if [ "$MVNW_VERBOSE" = true ]; then
echo '          echo "Found curl ... using curl"
echo '        fi
echo '        if [ -z "$MVNW_USERNAME" ] || [ -z "$MVNW_PASSWORD" ]; then
echo '            curl -o "$wrapperJarPath" "$jarUrl" -f
echo '        else
echo '            curl --user $MVNW_USERNAME:$MVNW_PASSWORD -o "$wrapperJarPath" "$jarUrl" -f
echo '        fi
echo '
echo '    else
echo '        if [ "$MVNW_VERBOSE" = true ]; then
echo '          echo "Falling back to using Java to download"
echo '        fi
echo '        javaClass="$BASE_DIR/.mvn/wrapper/MavenWrapperDownloader.java"
echo '        # For Cygwin, switch paths to Windows format before running javac
echo '        if $cygwin; then
echo '          javaClass=`cygpath --path --windows "$javaClass"`
echo '        fi
echo '        if [ -e "$javaClass" ]; then
echo '            if [ ! -e "$BASE_DIR/.mvn/wrapper/MavenWrapperDownloader.class" ]; then
echo '                if [ "$MVNW_VERBOSE" = true ]; then
echo '                  echo " - Compiling MavenWrapperDownloader.java ..."
echo '                fi
echo '                # Compiling the Java class
echo '                ("$JAVA_HOME/bin/javac" "$javaClass")
echo '            fi
echo '            if [ -e "$BASE_DIR/.mvn/wrapper/MavenWrapperDownloader.class" ]; then
echo '                # Running the downloader
echo '                if [ "$MVNW_VERBOSE" = true ]; then
echo '                  echo " - Running MavenWrapperDownloader.java ..."
echo '                fi
echo '                ("$JAVA_HOME/bin/java" -cp .mvn/wrapper MavenWrapperDownloader "$MAVEN_PROJECTBASEDIR")
echo '            fi
echo '        fi
echo '    fi
echo 'fi
echo '##########################################################################################
echo '# End of extension
echo '##########################################################################################
echo '
echo 'export MAVEN_PROJECTBASEDIR=${MAVEN_BASEDIR:-"$BASE_DIR"}
echo 'if [ "$MVNW_VERBOSE" = true ]; then
echo '  echo $MAVEN_PROJECTBASEDIR
echo 'fi
echo 'MAVEN_OPTS="$(concat_lines "$MAVEN_PROJECTBASEDIR/.mvn/jvm.config") $MAVEN_OPTS"
echo '
echo '# For Cygwin, switch paths to Windows format before running java
echo 'if $cygwin; then
echo '  [ -n "$M2_HOME" ] &&
echo '    M2_HOME=`cygpath --path --windows "$M2_HOME"`
echo '  [ -n "$JAVA_HOME" ] &&
echo '    JAVA_HOME=`cygpath --path --windows "$JAVA_HOME"`
echo '  [ -n "$CLASSPATH" ] &&
echo '    CLASSPATH=`cygpath --path --windows "$CLASSPATH"`
echo '  [ -n "$MAVEN_PROJECTBASEDIR" ] &&
echo '    MAVEN_PROJECTBASEDIR=`cygpath --path --windows "$MAVEN_PROJECTBASEDIR"`
echo 'fi
echo '
echo '# Provide a "standardized" way to retrieve the CLI args that will
echo '# work with both Windows and non-Windows executions.
echo 'MAVEN_CMD_LINE_ARGS="$MAVEN_CONFIG $@"
echo 'export MAVEN_CMD_LINE_ARGS
echo '
echo 'WRAPPER_LAUNCHER=org.apache.maven.wrapper.MavenWrapperMain
echo '
echo 'exec "$JAVACMD" \
echo '  $MAVEN_OPTS \
echo '  $MAVEN_DEBUG_OPTS \
echo '  -classpath "$MAVEN_PROJECTBASEDIR/.mvn/wrapper/maven-wrapper.jar" \
echo '  "-Dmaven.home=${M2_HOME}" \
echo '  "-Dmaven.multiModuleProjectDirectory=${MAVEN_PROJECTBASEDIR}" \
echo '  ${WRAPPER_LAUNCHER} $MAVEN_CONFIG "$@"' >> ./$PROJECT_NAME/mvnw