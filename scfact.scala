/* Trivial Factorial Benchmark -- Scala Version
 * This software is in the public domain
 */
import scala.math

object Fact extends App {
  def fact(acc: BigInt, n: BigInt): BigInt = {
    if (n == 1) acc
    else fact(acc * n, n-1)
  }

  def factNonTailRec(n: BigInt): BigInt = {
    def fact(i: Int, acc: BigInt): BigInt =
      if (i == n) n*acc
      else fact(i+1,i*acc)
    fact(1,1)
  }

  println(factNonTailRec(BigInt(args(0))))
}
