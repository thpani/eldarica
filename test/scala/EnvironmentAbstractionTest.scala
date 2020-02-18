import java.nio.file.Paths

import lazabs.horn.concurrency.CCReader
import lazabs.horn.concurrency.VerificationLoop.Counterexample
import org.scalatest.FunSuite

class EnvironmentAbstractionTest extends FunSuite {
  def checkIsSafe(filename: String) = {
    val system =
      CCReader(new java.io.BufferedReader (
        new java.io.FileReader(new java.io.File (Paths.get("./", "regression-tests", "environment-abstract", filename).toString))),
        "main", CCReader.ArithmeticMode.Mathematical, true).mergeLocalTransitions.environmentAbstract

    val result = new lazabs.horn.concurrency.VerificationLoop(system, true).result
    assert(result.isInstanceOf[Left[Unit, Counterexample]])
  }
  test("pp.c") {
    checkIsSafe("pp.c")
  }
  test("mm.c") {
    checkIsSafe("pp.c")
  }
  test("ppmm.c") {
    checkIsSafe("ppmm.c")
  }
  test("ppmm_threaded.c") {
    checkIsSafe("ppmm_threaded.c")
  }
  test("mmpp.c") {
    checkIsSafe("ppmm.c")
  }
  test("qw2004.c") {
    checkIsSafe("qw2004.c")
  }
}
