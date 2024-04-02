package org.sireum.hamr.codegen.jisabelle

import org.sireum._
import org.sireum.hamr.codegen.jisabelle.cli.Cli

import java.net.{URL, URLClassLoader}

object Generate extends App {

  val sireumHome: Os.Path = Os.path(Os.env("SIREUM_HOME").get)
  val sireum: Os.Path = sireumHome / "bin" / (if (Os.isWin) "sireum.bat" else "sireum")

  override def main(args: ISZ[String]): Z = {
    Cli(Os.pathSepChar).parseIsabelleCodeGenCli(args, 0) match {
      case Some(o: Cli.IsabelleCodeGenCliOption) =>
        if (o.args.size != 1) {
          println("Must supply the path to the root of proyek project")
          return -1
        }
        val proyekHome = Os.path(o.args(0))
        if (!proyekHome.exists || !(proyekHome / "bin" / "project.cmd").exists) {
          println(s"$proyekHome is not the root of a proyek project")
          return -1
        }
        val theory = generateIsabelleSystemInstance(o.modelName.get, proyekHome)
        val outFile = Os.path(o.outputDir.get) / s"${o.modelName.get}.thy"
        outFile.writeOver(theory.render)
        println(s"Wrote: ${outFile}")
        return 0
      case _ => return -1
    }
  }

  def generateIsabelleSystemInstance(modelName: String, proyekHome: Os.Path): ST = {

    proc"$sireum proyek compile $proyekHome".runCheck()

    val arch = Os.Path.walk(proyekHome / "out", F, F, p => p.name.native == "Arch.class")(0)
    val packageName = arch.up.name

    val fqname: String = s"$packageName.Arch"

    val cl = new URLClassLoader(Array(new URL(arch.up.up.toUri.native)))
    val o = cl.loadClass(fqname.native).getMethod(string"ad".native).invoke(null)

    val archDesc = o.asInstanceOf[art.ArchitectureDescription]

    return Generator.genSystemInstanceIsa(modelName, archDesc)
  }
}
