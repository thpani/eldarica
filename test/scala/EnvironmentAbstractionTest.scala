import java.nio.file.Paths

import lazabs.GlobalParameters
import lazabs.GlobalParameters.InputFormat
import lazabs.Main.{StoppedException, TimeoutException}
import lazabs.horn.abstractions.StaticAbstractionBuilder.AbstractionType
import lazabs.horn.concurrency.CCReader
import lazabs.nts.{NtsHorn, NtsWrapper}
import lazabs.viewer.{HornPrinter, HornSMTPrinter}
import org.scalatest.FunSuite

class EnvironmentAbstractionTest extends FunSuite {
  def check(filename: String) = {
    GlobalParameters.parameters.value.envAbstraction = true
    GlobalParameters.parameters.value.templateBasedInterpolationType = AbstractionType.Term
    GlobalParameters.parameters.value.templateBasedInterpolationPrint = true

    val system =
      CCReader(new java.io.BufferedReader (
        new java.io.FileReader(new java.io.File (Paths.get("./", "regression-tests", "environment-abstract", filename).toString))),
        "main", CCReader.ArithmeticMode.Mathematical, true).mergeLocalTransitions.environmentAbstract

    val result = new lazabs.horn.concurrency.VerificationLoop(system).result
    result
  }
  def checkIsSafe(filename: String) = {
    assert(check(filename).isLeft)
  }
  def checkIsUnsafe(filename: String) = {
    assert(check(filename).isRight)
  }
  def checkIsSafeSMT(filename: String) = {
    GlobalParameters.parameters.value.templateBasedInterpolationType = AbstractionType.Term
    GlobalParameters.parameters.value.templateBasedInterpolationPrint = true
    val clauseSet = lazabs.horn.parser.HornReader.fromSMT(Paths.get("./", "regression-tests", "environment-abstract", filename).toString)
    val result = lazabs.horn.Solve(clauseSet, None, false, false, false, false)
    assert(result.get.isLeft)
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
  test("fkp2014.c") {
    checkIsSafe("fkp2014.c")
  }
  test("13_unverif.c") {
    checkIsSafe("13_unverif.c")
  }
  test("sssc12.c") {
    checkIsSafe("sssc12.c")
  }
  test("shareds.c") {
    checkIsSafe("shareds.c")
  }
  test("shareds-bug.c") {
    checkIsUnsafe("shareds-bug.c")
  }
  test("cyclic") {
    checkIsSafeSMT("cyclic.c-1_1_1.smt2")
  }
}
