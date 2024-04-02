// #Sireum
import org.sireum._
import org.sireum.cli.CliOpt._

  val isabelleCodeGenTool: Tool = Tool(
    name = "isabelleCodeGenCli",
    command = "isabelleCodeGenCli",
    description = "", // description not currently used by cligen
    header = "Generate Isabelle code from Architecture Description",
    usage = "<option>* <dir>",
    usageDescOpt = None(),
    opts = ISZ(
      Opt(name = "modelName", longKey = "model-name", shortKey = Some('m'),
        tpe = Type.Str(sep = None(), default = Some("main")),
        description = "Theory name"),
      Opt(name = "outputDir", longKey = "output-dir", shortKey = Some('o'),
        tpe = Type.Path(multiple = F, default = Some(".")),
        description = "Output directory for the generated theory files")
    ),
    groups = ISZ()
  )

println(org.sireum.cli.JSON.fromCliOpt(isabelleCodeGenTool, T))