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

val sireum = Os.path(Os.env("SIREUM_HOME").get) / "bin" / (if (Os.isWin) "sireum.bat" else "sireum")
val home = Os.slashDir.up.canon

def regenCliOpt(): Unit = {
  val cliPackagePath = home / "jvm" / "src" / "main" / "scala" / "org" / "sireum" / "hamr" / "codegen" / "jisabelle" / "cli"
  proc"$sireum tools cligen -p org.sireum.hamr.codegen.jisabelle.cli -o ${cliPackagePath.string} ${cliPackagePath / "isabellecli.sc"}".runCheck()
}

regenCliOpt()