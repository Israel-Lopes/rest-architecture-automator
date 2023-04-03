#!/bin/bash

echo '#!/bin/bash' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo '#!/bin/sh' >> ./$PROJECT_NAME/mvnw
echo '# ----------------------------------------------------------------------------' >> ./$PROJECT_NAME/mvnw
echo '# Licensed to the Apache Software Foundation (ASF) under one' >> ./$PROJECT_NAME/mvnw
echo '# or more contributor license agreements.  See the NOTICE file' >> ./$PROJECT_NAME/mvnw
echo '# distributed with this work for additional information' >> ./$PROJECT_NAME/mvnw
echo '# regarding copyright ownership.  The ASF licenses this file' >> ./$PROJECT_NAME/mvnw
echo '# to you under the Apache License, Version 2.0 (the' >> ./$PROJECT_NAME/mvnw
echo '# "License"); you may not use this file except in compliance' >> ./$PROJECT_NAME/mvnw
echo '# with the License.  You may obtain a copy of the License at' >> ./$PROJECT_NAME/mvnw
echo '#' >> ./$PROJECT_NAME/mvnw
echo '#    https://www.apache.org/licenses/LICENSE-2.0' >> ./$PROJECT_NAME/mvnw
echo '#' >> ./$PROJECT_NAME/mvnw
echo '# Unless required by applicable law or agreed to in writing,' >> ./$PROJECT_NAME/mvnw
echo '# software distributed under the License is distributed on an' >> ./$PROJECT_NAME/mvnw
echo '# "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY' >> ./$PROJECT_NAME/mvnw
echo '# KIND, either express or implied.  See the License for the' >> ./$PROJECT_NAME/mvnw
echo '# specific language governing permissions and limitations' >> ./$PROJECT_NAME/mvnw
echo '# under the License.' >> ./$PROJECT_NAME/mvnw
echo '# ----------------------------------------------------------------------------' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo '# ----------------------------------------------------------------------------' >> ./$PROJECT_NAME/mvnw
echo '# Maven Start Up Batch script' >> ./$PROJECT_NAME/mvnw
echo '#' >> ./$PROJECT_NAME/mvnw
echo '# Required ENV vars:' >> ./$PROJECT_NAME/mvnw
echo '# ------------------' >> ./$PROJECT_NAME/mvnw
echo '#   JAVA_HOME - location of a JDK home dir' >> ./$PROJECT_NAME/mvnw
echo '#' >> ./$PROJECT_NAME/mvnw
echo '# Optional ENV vars' >> ./$PROJECT_NAME/mvnw
echo '# -----------------' >> ./$PROJECT_NAME/mvnw
echo "#   M2_HOME - location of maven2's installed home dir" >> ./$PROJECT_NAME/mvnw
echo '#   MAVEN_OPTS - parameters passed to the Java VM when running Maven' >> ./$PROJECT_NAME/mvnw
echo '#     e.g. to debug Maven itself, use' >> ./$PROJECT_NAME/mvnw
echo '#       set MAVEN_OPTS=-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=y,address=8000' >> ./$PROJECT_NAME/mvnw
echo '#   MAVEN_SKIP_RC - flag to disable loading of mavenrc files' >> ./$PROJECT_NAME/mvnw
echo '# ----------------------------------------------------------------------------' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo 'if [ -z "$MAVEN_SKIP_RC" ] ; then' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo '  if [ -f /usr/local/etc/mavenrc ] ; then' >> ./$PROJECT_NAME/mvnw
echo '    . /usr/local/etc/mavenrc' >> ./$PROJECT_NAME/mvnw
echo '  fi' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo '  if [ -f /etc/mavenrc ] ; then' >> ./$PROJECT_NAME/mvnw
echo '    . /etc/mavenrc' >> ./$PROJECT_NAME/mvnw
echo '  fi' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo '  if [ -f "$HOME/.mavenrc" ] ; then' >> ./$PROJECT_NAME/mvnw
echo '    . "$HOME/.mavenrc"' >> ./$PROJECT_NAME/mvnw
echo '  fi' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo 'fi' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo '# OS specific support.  $var _must_ be set to either true or false.' >> ./$PROJECT_NAME/mvnw
echo 'cygwin=false;' >> ./$PROJECT_NAME/mvnw
echo 'darwin=false;' >> ./$PROJECT_NAME/mvnw
echo 'mingw=false' >> ./$PROJECT_NAME/mvnw
echo 'case "`uname`" in' >> ./$PROJECT_NAME/mvnw
echo '  CYGWIN*) cygwin=true ;;' >> ./$PROJECT_NAME/mvnw
echo '  MINGW*) mingw=true;;' >> ./$PROJECT_NAME/mvnw
echo '  Darwin*) darwin=true' >> ./$PROJECT_NAME/mvnw
echo '    # Use /usr/libexec/java_home if available, otherwise fall back to /Library/Java/Home' >> ./$PROJECT_NAME/mvnw
echo '    # See https://developer.apple.com/library/mac/qa/qa1170/_index.html' >> ./$PROJECT_NAME/mvnw
echo '    if [ -z "$JAVA_HOME" ]; then' >> ./$PROJECT_NAME/mvnw
echo '      if [ -x "/usr/libexec/java_home" ]; then' >> ./$PROJECT_NAME/mvnw
echo '        export JAVA_HOME="`/usr/libexec/java_home`"' >> ./$PROJECT_NAME/mvnw
echo '      else' >> ./$PROJECT_NAME/mvnw
echo '        export JAVA_HOME="/Library/Java/Home"' >> ./$PROJECT_NAME/mvnw
echo '      fi' >> ./$PROJECT_NAME/mvnw
echo '    fi' >> ./$PROJECT_NAME/mvnw
echo '    ;;' >> ./$PROJECT_NAME/mvnw
echo 'esac' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo 'if [ -z "$JAVA_HOME" ] ; then' >> ./$PROJECT_NAME/mvnw
echo '  if [ -r /etc/gentoo-release ] ; then' >> ./$PROJECT_NAME/mvnw
echo '    JAVA_HOME=`java-config --jre-home`' >> ./$PROJECT_NAME/mvnw
echo '  fi' >> ./$PROJECT_NAME/mvnw
echo 'fi' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo "if [ -z "\$M2_HOME" ] ; then" >> ./$PROJECT_NAME/mvnw
echo "  ## resolve links - $0 may be a link to maven's home" >> ./$PROJECT_NAME/mvnw
echo '  PRG="\$0"' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo '  # need this for relative symlinks' >> ./$PROJECT_NAME/mvnw
echo '  while [ -h "$PRG" ] ; do' >> ./$PROJECT_NAME/mvnw
echo '    ls=`ls -ld "$PRG"`' >> ./$PROJECT_NAME/mvnw
echo '    link=`expr "$ls" : '.*-> \(.*\)$'`' >> ./$PROJECT_NAME/mvnw
echo '    if expr "$link" : '/.*' > /dev/null; then' >> ./$PROJECT_NAME/mvnw
echo '      PRG="$link"' >> ./$PROJECT_NAME/mvnw
echo '    else' >> ./$PROJECT_NAME/mvnw
echo '      PRG="`dirname "$PRG"`/$link"' >> ./$PROJECT_NAME/mvnw
echo '    fi' >> ./$PROJECT_NAME/mvnw
echo '  done' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo '  saveddir=`pwd`' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo '  M2_HOME=`dirname "$PRG"`/..' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo '  # make it fully qualified' >> ./$PROJECT_NAME/mvnw
echo '  M2_HOME=`cd "$M2_HOME" && pwd`' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo '  cd "$saveddir"' >> ./$PROJECT_NAME/mvnw
echo '  # echo Using m2 at $M2_HOME' >> ./$PROJECT_NAME/mvnw
echo 'fi' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo '# For Cygwin, ensure paths are in UNIX format before anything is touched' >> ./$PROJECT_NAME/mvnw
echo 'if $cygwin ; then' >> ./$PROJECT_NAME/mvnw
echo '  [ -n "$M2_HOME" ] &&' >> ./$PROJECT_NAME/mvnw
echo '    M2_HOME=`cygpath --unix "$M2_HOME"`' >> ./$PROJECT_NAME/mvnw
echo '  [ -n "$JAVA_HOME" ] &&' >> ./$PROJECT_NAME/mvnw
echo '    JAVA_HOME=`cygpath --unix "$JAVA_HOME"`' >> ./$PROJECT_NAME/mvnw
echo '  [ -n "$CLASSPATH" ] &&' >> ./$PROJECT_NAME/mvnw
echo '    CLASSPATH=`cygpath --path --unix "$CLASSPATH"`' >> ./$PROJECT_NAME/mvnw
echo 'fi' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo '# For Mingw, ensure paths are in UNIX format before anything is touched' >> ./$PROJECT_NAME/mvnw
echo 'if $mingw ; then' >> ./$PROJECT_NAME/mvnw
echo '  [ -n "$M2_HOME" ] &&' >> ./$PROJECT_NAME/mvnw
echo '    M2_HOME="`(cd "$M2_HOME"; pwd)`"' >> ./$PROJECT_NAME/mvnw
echo '  [ -n "$JAVA_HOME" ] &&' >> ./$PROJECT_NAME/mvnw
echo '    JAVA_HOME="`(cd "$JAVA_HOME"; pwd)`"' >> ./$PROJECT_NAME/mvnw
echo 'fi' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo 'if [ -z "$JAVA_HOME" ]; then' >> ./$PROJECT_NAME/mvnw
echo '  javaExecutable="`which javac`"' >> ./$PROJECT_NAME/mvnw
echo '  if [ -n "$javaExecutable" ] && ! [ "`expr \"$javaExecutable\" : '\([^ ]*\)'`" = "no" ]; then' >> ./$PROJECT_NAME/mvnw
echo '    # readlink(1) is not available as standard on Solaris 10.' >> ./$PROJECT_NAME/mvnw
echo '    readLink=`which readlink`' >> ./$PROJECT_NAME/mvnw
echo '    if [ ! `expr "$readLink" : '\([^ ]*\)'` = "no" ]; then' >> ./$PROJECT_NAME/mvnw
echo '      if $darwin ; then' >> ./$PROJECT_NAME/mvnw
echo '        javaHome="`dirname \"$javaExecutable\"`"' >> ./$PROJECT_NAME/mvnw
echo '        javaExecutable="`cd \"$javaHome\" && pwd -P`/javac"' >> ./$PROJECT_NAME/mvnw
echo '      else' >> ./$PROJECT_NAME/mvnw
echo '        javaExecutable="`readlink -f \"$javaExecutable\"`"' >> ./$PROJECT_NAME/mvnw
echo '      fi' >> ./$PROJECT_NAME/mvnw
echo '      javaHome="`dirname \"$javaExecutable\"`"' >> ./$PROJECT_NAME/mvnw
echo '      javaHome=`expr "$javaHome" : '\(.*\)/bin'`' >> ./$PROJECT_NAME/mvnw
echo '      JAVA_HOME="$javaHome"' >> ./$PROJECT_NAME/mvnw
echo '      export JAVA_HOME' >> ./$PROJECT_NAME/mvnw
echo '    fi' >> ./$PROJECT_NAME/mvnw
echo '  fi' >> ./$PROJECT_NAME/mvnw
echo 'fi' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo 'if [ -z "$JAVACMD" ] ; then' >> ./$PROJECT_NAME/mvnw
echo '  if [ -n "$JAVA_HOME"  ] ; then' >> ./$PROJECT_NAME/mvnw
echo '    if [ -x "$JAVA_HOME/jre/sh/java" ] ; then' >> ./$PROJECT_NAME/mvnw
echo "      # IBM's JDK on AIX uses strange locations for the executables" >> ./$PROJECT_NAME/mvnw
echo '      JAVACMD="$JAVA_HOME/jre/sh/java"' >> ./$PROJECT_NAME/mvnw
echo '    else' >> ./$PROJECT_NAME/mvnw
echo '      JAVACMD="$JAVA_HOME/bin/java"' >> ./$PROJECT_NAME/mvnw
echo '    fi' >> ./$PROJECT_NAME/mvnw
echo '  else' >> ./$PROJECT_NAME/mvnw
echo '    JAVACMD="`\\unset -f command; \\command -v java`"' >> ./$PROJECT_NAME/mvnw
echo '  fi' >> ./$PROJECT_NAME/mvnw
echo 'fi' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo 'if [ ! -x "$JAVACMD" ] ; then' >> ./$PROJECT_NAME/mvnw
echo '  echo "Error: JAVA_HOME is not defined correctly." >&2' >> ./$PROJECT_NAME/mvnw
echo '  echo "  We cannot execute $JAVACMD" >&2' >> ./$PROJECT_NAME/mvnw
echo '  exit 1' >> ./$PROJECT_NAME/mvnw
echo 'fi' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo 'if [ -z "$JAVA_HOME" ] ; then' >> ./$PROJECT_NAME/mvnw
echo '  echo "Warning: JAVA_HOME environment variable is not set."' >> ./$PROJECT_NAME/mvnw
echo 'fi' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo 'CLASSWORLDS_LAUNCHER=org.codehaus.plexus.classworlds.launcher.Launcher' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo '# traverses directory structure from process work directory to filesystem root' >> ./$PROJECT_NAME/mvnw
echo '# first directory with .mvn subdirectory is considered project base directory' >> ./$PROJECT_NAME/mvnw
echo 'find_maven_basedir() {' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo '  if [ -z "$1" ]' >> ./$PROJECT_NAME/mvnw
echo '  then' >> ./$PROJECT_NAME/mvnw
echo '    echo "Path not specified to find_maven_basedir"' >> ./$PROJECT_NAME/mvnw
echo '    return 1' >> ./$PROJECT_NAME/mvnw
echo '  fi' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo '  basedir="$1"' >> ./$PROJECT_NAME/mvnw
echo '  wdir="$1"' >> ./$PROJECT_NAME/mvnw
echo '  while [ "$wdir" != '/' ] ; do' >> ./$PROJECT_NAME/mvnw
echo '    if [ -d "$wdir"/.mvn ] ; then' >> ./$PROJECT_NAME/mvnw
echo '      basedir=$wdir' >> ./$PROJECT_NAME/mvnw
echo '      break' >> ./$PROJECT_NAME/mvnw
echo '    fi' >> ./$PROJECT_NAME/mvnw
echo '    # workaround for JBEAP-8937 (on Solaris 10/Sparc)' >> ./$PROJECT_NAME/mvnw
echo '    if [ -d "${wdir}" ]; then' >> ./$PROJECT_NAME/mvnw
echo '      wdir=`cd "$wdir/.."; pwd`' >> ./$PROJECT_NAME/mvnw
echo '    fi' >> ./$PROJECT_NAME/mvnw
echo '    # end of workaround' >> ./$PROJECT_NAME/mvnw
echo '  done' >> ./$PROJECT_NAME/mvnw
echo '  echo "${basedir}"' >> ./$PROJECT_NAME/mvnw
echo '}' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo '# concatenates all lines of a file' >> ./$PROJECT_NAME/mvnw
echo 'concat_lines() {' >> ./$PROJECT_NAME/mvnw
echo '  if [ -f "$1" ]; then' >> ./$PROJECT_NAME/mvnw
echo '    echo "$(tr -s '\n' ' ' < "$1")"' >> ./$PROJECT_NAME/mvnw
echo '  fi' >> ./$PROJECT_NAME/mvnw
echo '}' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo 'BASE_DIR=`find_maven_basedir "$(pwd)"`' >> ./$PROJECT_NAME/mvnw
echo 'if [ -z "$BASE_DIR" ]; then' >> ./$PROJECT_NAME/mvnw
echo '  exit 1;' >> ./$PROJECT_NAME/mvnw
echo 'fi' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo '##########################################################################################' >> ./$PROJECT_NAME/mvnw
echo '# Extension to allow automatically downloading the maven-wrapper.jar from Maven-central' >> ./$PROJECT_NAME/mvnw
echo '# This allows using the maven wrapper in projects that prohibit checking in binary data.' >> ./$PROJECT_NAME/mvnw
echo '##########################################################################################' >> ./$PROJECT_NAME/mvnw
echo 'if [ -r "$BASE_DIR/.mvn/wrapper/maven-wrapper.jar" ]; then' >> ./$PROJECT_NAME/mvnw
echo '    if [ "$MVNW_VERBOSE" = true ]; then' >> ./$PROJECT_NAME/mvnw
echo '      echo "Found .mvn/wrapper/maven-wrapper.jar"' >> ./$PROJECT_NAME/mvnw
echo '    fi' >> ./$PROJECT_NAME/mvnw
echo 'else' >> ./$PROJECT_NAME/mvnw
echo '    if [ "$MVNW_VERBOSE" = true ]; then' >> ./$PROJECT_NAME/mvnw
echo '      echo "Couldn-t find .mvn/wrapper/maven-wrapper.jar, downloading it ..."' >> ./$PROJECT_NAME/mvnw
echo '    fi' >> ./$PROJECT_NAME/mvnw
echo '    if [ -n "$MVNW_REPOURL" ]; then' >> ./$PROJECT_NAME/mvnw
echo '      jarUrl="$MVNW_REPOURL/org/apache/maven/wrapper/maven-wrapper/3.1.0/maven-wrapper-3.1.0.jar"' >> ./$PROJECT_NAME/mvnw
echo '    else' >> ./$PROJECT_NAME/mvnw
echo '      jarUrl="https://repo.maven.apache.org/maven2/org/apache/maven/wrapper/maven-wrapper/3.1.0/maven-wrapper-3.1.0.jar"' >> ./$PROJECT_NAME/mvnw
echo '    fi' >> ./$PROJECT_NAME/mvnw
echo '    while IFS="=" read key value; do' >> ./$PROJECT_NAME/mvnw
echo '      case "$key" in (wrapperUrl) jarUrl="$value"; break ;;' >> ./$PROJECT_NAME/mvnw
echo '      esac' >> ./$PROJECT_NAME/mvnw
echo '    done < "$BASE_DIR/.mvn/wrapper/maven-wrapper.properties"' >> ./$PROJECT_NAME/mvnw
echo '    if [ "$MVNW_VERBOSE" = true ]; then' >> ./$PROJECT_NAME/mvnw
echo '      echo "Downloading from: $jarUrl"' >> ./$PROJECT_NAME/mvnw
echo '    fi' >> ./$PROJECT_NAME/mvnw
echo '    wrapperJarPath="$BASE_DIR/.mvn/wrapper/maven-wrapper.jar"' >> ./$PROJECT_NAME/mvnw
echo '    if $cygwin; then' >> ./$PROJECT_NAME/mvnw
echo '      wrapperJarPath=`cygpath --path --windows "$wrapperJarPath"`' >> ./$PROJECT_NAME/mvnw
echo '    fi' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo '    if command -v wget > /dev/null; then' >> ./$PROJECT_NAME/mvnw
echo '        if [ "$MVNW_VERBOSE" = true ]; then' >> ./$PROJECT_NAME/mvnw
echo '          echo "Found wget ... using wget"' >> ./$PROJECT_NAME/mvnw
echo '        fi' >> ./$PROJECT_NAME/mvnw
echo '        if [ -z "$MVNW_USERNAME" ] || [ -z "$MVNW_PASSWORD" ]; then' >> ./$PROJECT_NAME/mvnw
echo '            wget "$jarUrl" -O "$wrapperJarPath" || rm -f "$wrapperJarPath"' >> ./$PROJECT_NAME/mvnw
echo '        else' >> ./$PROJECT_NAME/mvnw
echo '            wget --http-user=$MVNW_USERNAME --http-password=$MVNW_PASSWORD "$jarUrl" -O "$wrapperJarPath" || rm -f "$wrapperJarPath"' >> ./$PROJECT_NAME/mvnw
echo '        fi' >> ./$PROJECT_NAME/mvnw
echo '    elif command -v curl > /dev/null; then' >> ./$PROJECT_NAME/mvnw
echo '        if [ "$MVNW_VERBOSE" = true ]; then' >> ./$PROJECT_NAME/mvnw
echo '          echo "Found curl ... using curl"' >> ./$PROJECT_NAME/mvnw
echo '        fi' >> ./$PROJECT_NAME/mvnw
echo '        if [ -z "$MVNW_USERNAME" ] || [ -z "$MVNW_PASSWORD" ]; then' >> ./$PROJECT_NAME/mvnw
echo '            curl -o "$wrapperJarPath" "$jarUrl" -f' >> ./$PROJECT_NAME/mvnw
echo '        else' >> ./$PROJECT_NAME/mvnw
echo '            curl --user $MVNW_USERNAME:$MVNW_PASSWORD -o "$wrapperJarPath" "$jarUrl" -f' >> ./$PROJECT_NAME/mvnw
echo '        fi' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo '    else' >> ./$PROJECT_NAME/mvnw
echo '        if [ "$MVNW_VERBOSE" = true ]; then' >> ./$PROJECT_NAME/mvnw
echo '          echo "Falling back to using Java to download"' >> ./$PROJECT_NAME/mvnw
echo '        fi' >> ./$PROJECT_NAME/mvnw
echo '        javaClass="$BASE_DIR/.mvn/wrapper/MavenWrapperDownloader.java"' >> ./$PROJECT_NAME/mvnw
echo '        # For Cygwin, switch paths to Windows format before running javac' >> ./$PROJECT_NAME/mvnw
echo '        if $cygwin; then' >> ./$PROJECT_NAME/mvnw
echo '          javaClass=`cygpath --path --windows "$javaClass"`' >> ./$PROJECT_NAME/mvnw
echo '        fi' >> ./$PROJECT_NAME/mvnw
echo '        if [ -e "$javaClass" ]; then' >> ./$PROJECT_NAME/mvnw
echo '            if [ ! -e "$BASE_DIR/.mvn/wrapper/MavenWrapperDownloader.class" ]; then' >> ./$PROJECT_NAME/mvnw
echo '                if [ "$MVNW_VERBOSE" = true ]; then' >> ./$PROJECT_NAME/mvnw
echo '                  echo " - Compiling MavenWrapperDownloader.java ..."' >> ./$PROJECT_NAME/mvnw
echo '                fi' >> ./$PROJECT_NAME/mvnw
echo '                # Compiling the Java class' >> ./$PROJECT_NAME/mvnw
echo '                ("$JAVA_HOME/bin/javac" "$javaClass")' >> ./$PROJECT_NAME/mvnw
echo '            fi' >> ./$PROJECT_NAME/mvnw
echo '            if [ -e "$BASE_DIR/.mvn/wrapper/MavenWrapperDownloader.class" ]; then' >> ./$PROJECT_NAME/mvnw
echo '                # Running the downloader' >> ./$PROJECT_NAME/mvnw
echo '                if [ "$MVNW_VERBOSE" = true ]; then' >> ./$PROJECT_NAME/mvnw
echo '                  echo " - Running MavenWrapperDownloader.java ..."' >> ./$PROJECT_NAME/mvnw
echo '                fi' >> ./$PROJECT_NAME/mvnw
echo '                ("$JAVA_HOME/bin/java" -cp .mvn/wrapper MavenWrapperDownloader "$MAVEN_PROJECTBASEDIR")' >> ./$PROJECT_NAME/mvnw
echo '            fi' >> ./$PROJECT_NAME/mvnw
echo '        fi' >> ./$PROJECT_NAME/mvnw
echo '    fi' >> ./$PROJECT_NAME/mvnw
echo 'fi' >> ./$PROJECT_NAME/mvnw
echo '##########################################################################################' >> ./$PROJECT_NAME/mvnw
echo '# End of extension' >> ./$PROJECT_NAME/mvnw
echo '##########################################################################################' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo 'export MAVEN_PROJECTBASEDIR=${MAVEN_BASEDIR:-"$BASE_DIR"}' >> ./$PROJECT_NAME/mvnw
echo 'if [ "$MVNW_VERBOSE" = true ]; then' >> ./$PROJECT_NAME/mvnw
echo '  echo $MAVEN_PROJECTBASEDIR' >> ./$PROJECT_NAME/mvnw
echo 'fi' >> ./$PROJECT_NAME/mvnw
echo 'MAVEN_OPTS="$(concat_lines "$MAVEN_PROJECTBASEDIR/.mvn/jvm.config") $MAVEN_OPTS"' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo '# For Cygwin, switch paths to Windows format before running java' >> ./$PROJECT_NAME/mvnw
echo 'if $cygwin; then' >> ./$PROJECT_NAME/mvnw
echo '  [ -n "$M2_HOME" ] &&' >> ./$PROJECT_NAME/mvnw
echo '    M2_HOME=`cygpath --path --windows "$M2_HOME"`' >> ./$PROJECT_NAME/mvnw
echo '  [ -n "$JAVA_HOME" ] &&' >> ./$PROJECT_NAME/mvnw
echo '    JAVA_HOME=`cygpath --path --windows "$JAVA_HOME"`' >> ./$PROJECT_NAME/mvnw
echo '  [ -n "$CLASSPATH" ] &&' >> ./$PROJECT_NAME/mvnw
echo '    CLASSPATH=`cygpath --path --windows "$CLASSPATH"`' >> ./$PROJECT_NAME/mvnw
echo '  [ -n "$MAVEN_PROJECTBASEDIR" ] &&' >> ./$PROJECT_NAME/mvnw
echo '    MAVEN_PROJECTBASEDIR=`cygpath --path --windows "$MAVEN_PROJECTBASEDIR"`' >> ./$PROJECT_NAME/mvnw
echo 'fi' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo '# Provide a "standardized" way to retrieve the CLI args that will' >> ./$PROJECT_NAME/mvnw
echo '# work with both Windows and non-Windows executions.' >> ./$PROJECT_NAME/mvnw
echo 'MAVEN_CMD_LINE_ARGS="$MAVEN_CONFIG $@"' >> ./$PROJECT_NAME/mvnw
echo 'export MAVEN_CMD_LINE_ARGS' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo 'WRAPPER_LAUNCHER=org.apache.maven.wrapper.MavenWrapperMain' >> ./$PROJECT_NAME/mvnw
echo '' >> ./$PROJECT_NAME/mvnw
echo 'exec "$JAVACMD" \' >> ./$PROJECT_NAME/mvnw
echo '  $MAVEN_OPTS \' >> ./$PROJECT_NAME/mvnw
echo '  $MAVEN_DEBUG_OPTS \' >> ./$PROJECT_NAME/mvnw
echo '  -classpath "$MAVEN_PROJECTBASEDIR/.mvn/wrapper/maven-wrapper.jar" \' >> ./$PROJECT_NAME/mvnw
echo '  "-Dmaven.home=${M2_HOME}" \' >> ./$PROJECT_NAME/mvnw
echo '  "-Dmaven.multiModuleProjectDirectory=${MAVEN_PROJECTBASEDIR}" \' >> ./$PROJECT_NAME/mvnw
echo '  ${WRAPPER_LAUNCHER} $MAVEN_CONFIG "$@"' >> ./$PROJECT_NAME/mvnw