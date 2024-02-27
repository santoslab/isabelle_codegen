package org.sireum.hamr.codegen.jisabelle

import org.sireum._
import org.sireum.test.TestSuite

class Tests extends TestSuite {

  val generateExpected: B = F

  val resourceDir = Os.path(implicitly[sourcecode.File].value).up.up.up.up.up.up.up / "resources"
  val modelsDir = resourceDir / "models"
  val expectedDir = resourceDir / "expected"
  val resultsDir = resourceDir.up / "results"

  "isolette" in {
    val modelName = "isolette"
    val proyekHome = modelsDir / "hamr-examples" / "isolette" / "hamr" / "slang"

    test(modelName, proyekHome)
  }

  "rts" in {
    val modelName = "rts"
    val proyekHome = modelsDir / "hamr-examples" / "rts" / "hamr" / "slang"

    test(modelName, proyekHome)
  }

  "temp_control_periodic" in {
    val modelName = "temp_control_periodic"
    val proyekHome = modelsDir / "hamr-examples" / "temp_control" / "periodic" / "hamr" / "slang"

    test(modelName, proyekHome)
  }

  "temp_control_sporadic" in {
    val modelName = "temp_control_sporadic"
    val proyekHome = modelsDir / "hamr-examples" / "temp_control" / "sporadic" / "hamr" / "slang"

    test(modelName, proyekHome)
  }

  def test(modelName: String, proyekHome: Os.Path): Unit = {

    val thy = Generate.generateIsabelleSystemInstance(modelName, proyekHome)
    val expected = expectedDir / modelName / s"$modelName.thy"
    val results = resultsDir / modelName / s"$modelName.thy"

    if (generateExpected) {
      expected.writeOver(thy.render)
      println(s"Wrote: ${expected.toUri}")
    } else {
      results.writeOver(thy.render)
      expected.copyOverTo(results.up / s"${modelName}_expected.thy")
      println(s"Wrote: ${results.toUri}")
      assert (expected.read == thy.render)
    }
  }
}
