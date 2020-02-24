import java.nio.file.Paths

import lazabs.GlobalParameters
import lazabs.horn.abstractions.StaticAbstractionBuilder.AbstractionType
import lazabs.horn.concurrency.CCReader
import lazabs.horn.concurrency.VerificationLoop.Counterexample
import org.scalatest.FunSuite

class EnvironmentAbstractionTest extends FunSuite {
  def checkIsSafe(filename: String) = {
    GlobalParameters.parameters.value.envAbstraction = true
    GlobalParameters.parameters.value.templateBasedInterpolationType = AbstractionType.Term
    GlobalParameters.parameters.value.templateBasedInterpolationPrint = true

    val system =
      CCReader(new java.io.BufferedReader (
        new java.io.FileReader(new java.io.File (Paths.get("./", "regression-tests", "environment-abstract", filename).toString))),
        "main", CCReader.ArithmeticMode.Mathematical, true).mergeLocalTransitions.environmentAbstract

    val result = new lazabs.horn.concurrency.VerificationLoop(system).result
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
  test("stack.c") {
    checkIsSafe("stack.c")
  }
  test("spin2003.c") {
    checkIsSafe("spin2003.c")
  }
  test("qw2004.c") {
    checkIsSafe("qw2004.c")
  }
  test("ticket_lock.c") {
    checkIsSafe("ticket_lock.c")
  }
  test("13_unverif.c") {
    checkIsSafe("13_unverif.c")
  }
}
