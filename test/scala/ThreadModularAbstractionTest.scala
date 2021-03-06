import java.nio.file.Paths

import lazabs.GlobalParameters
import lazabs.GlobalParameters.InputFormat
import lazabs.Main.{StoppedException, TimeoutException}
import lazabs.horn.abstractions.StaticAbstractionBuilder.AbstractionType
import lazabs.horn.concurrency.CCReader
import lazabs.nts.{NtsHorn, NtsWrapper}
import lazabs.viewer.{HornPrinter, HornSMTPrinter}
import org.scalatest.FunSuite
import org.scalatest.concurrent.TimeLimitedTests
import org.scalatest.time.SpanSugar._

class ThreadModularAbstractionTest extends FunSuite with TimeLimitedTests {
//  def timeLimit = 90 seconds  // works for all except locals.c
    def timeLimit = 200 seconds

  def check(filename: String) = {
    printf("\n\n\n===== Test: %s =====\n\n\n", filename)
    // Uncomment to output SMT horn clauses
    // GlobalParameters.parameters.value.fileName = filename
    // GlobalParameters.parameters.value.printIntermediateClauseSets = true
    GlobalParameters.parameters.value.tmca = true
    GlobalParameters.parameters.value.templateBasedInterpolationType = AbstractionType.Empty
    GlobalParameters.parameters.value.templateBasedInterpolationPrint = true
    GlobalParameters.parameters.value.templateBasedInterpolationTimeout = 5000  // `locals.c' needs longer timeout

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
    GlobalParameters.parameters.value.templateBasedInterpolationType = AbstractionType.Empty
    GlobalParameters.parameters.value.templateBasedInterpolationPrint = true
    val clauseSet = lazabs.horn.parser.HornReader.fromSMT(Paths.get("./", "regression-tests", "environment-abstract", filename).toString)
    val result = lazabs.horn.Solve(clauseSet, None, false, false, false, false)
    assert(result.get.isLeft)
  }
  test("pp.c") {
    checkIsSafe("pp.c")
  }
  test("mm.c") {
    checkIsSafe("mm.c")
  }
  test("ppmm.c") {
    checkIsSafe("ppmm.c")
  }
  test("ppmm_threaded.c") {
    checkIsSafe("ppmm_threaded.c")
  }
  test("ppmmpp.c") {
    checkIsSafe("ppmmpp.c")
  }
  test("mmpp.c") {
    checkIsSafe("mmpp.c")
  }
  test("stack.c") {
    checkIsSafe("stack.c")
  }
  /* Benchmarks from
   * https://github.com/sosy-lab/sv-benchmarks/tree/master/c/pthread-ext
   */
  test("spin2003.c") {
    checkIsSafe("spin2003.c")
  }
  test("13_unverif.c") {
    checkIsSafe("13_unverif.c")
  }
  test("13_unverif_2.c") {
    checkIsSafe("13_unverif_2.c")
  }
  /* Benchmarks from
   * https://github.com/sosy-lab/sv-benchmarks/tree/master/c/pthread-lit
   */
  test("qw2004.c") {
    checkIsSafe("qw2004.c")
  }
  test("fkp2014.c") {
    checkIsSafe("fkp2014.c")
  }
  test("sssc12.c") {
    checkIsSafe("sssc12.c")
  }
  /*
   * Benchmarks from
   * Ganjei, Rezine, Eles, Peng: Counting dynamically synchronizing processes. STTT 18(5): 517-534 (2016)
   * Ganjei, Rezine, Eles, Peng: Abstracting and Counting Synchronizing Processes. VMCAI 2015: 227-244, 2012
   */
  test("locals.c") {
    checkIsSafe("locals.c")
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
  test("readflag.c") {
    checkIsSafe("readflag.c")
  }
  test("semaphore.c") {
    checkIsSafe("semaphore.c")
  }
}
