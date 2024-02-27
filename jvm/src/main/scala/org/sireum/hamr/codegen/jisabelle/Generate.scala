// #Sireum
package org.sireum.hamr.codegen.jisabelle

import org.sireum._

import java.net.{URL, URLClassLoader}

object Generate extends App {

  val sireumHome: Os.Path = Os.path(Os.env("SIREUM_HOME").get)
  val sireum: Os.Path = sireumHome / "bin" / (if (Os.isWin) "sireum.bat" else "sireum")


  override def main(args: ISZ[String]): Z = {
    halt("TODO: add cli")

    return 0
  }

  def generateIsabelleSystemInstance(modelName: String, proyekHome: Os.Path): ST = {

    proc"$sireum proyek compile $proyekHome".runCheck()

    val arch = Os.Path.walk(proyekHome / "out", F, F, p => p.name == "Arch.class")(0)
    val packageName = arch.up.name

    val fqname: String = s"$packageName.Arch"

    val cl = new URLClassLoader(Array(new URL(arch.up.up.toUri.native)))
    val o = cl.loadClass(fqname.native).getMethod(string"ad".native).invoke(null)

    val archDesc = o.asInstanceOf[art.ArchitectureDescription]

    return Generator.genSystemInstanceIsa(modelName, archDesc)
  }
}
