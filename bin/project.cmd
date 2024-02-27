::/*#! 2> /dev/null                                 #
@ 2>/dev/null # 2>nul & echo off & goto BOF         #
if [ -z ${SIREUM_HOME} ]; then                      #
  echo "Please set SIREUM_HOME env var"             #
  exit -1                                           #
fi                                                  #
exec ${SIREUM_HOME}/bin/sireum slang run "$0" "$@"  #
:BOF
setlocal
if not defined SIREUM_HOME (
  echo Please set SIREUM_HOME env var
  exit /B -1
)
%SIREUM_HOME%\bin\sireum.bat slang run "%0" %*
exit /B %errorlevel%
::!#*/
// #Sireum

import org.sireum._
import org.sireum.project.ProjectUtil._
import org.sireum.project.{Project, ProjectUtil}

val codegen = "isabelle-codegen"

val homeDir = Os.slashDir.up.canon

var codegenJvm = moduleJvmPub(
  id = codegen,
  baseDir = homeDir,
  jvmDeps = ISZ(),
  jvmIvyDeps = ISZ(
    "org.sireum.kekinian::library:",
    "org.sireum.kekinian::slang-embedded-art:"),
  pubOpt = pub(
    desc = "HAMR Isabelle Code Generator",
    url = "github.com/sireum/hamr-codegen",
    licenses = bsd2,
    devs = ISZ(jasonBelt)
  )
)

val project = Project.empty + codegenJvm

projectCli(Os.cliArgs, project)
