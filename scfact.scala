/* Trivial Factorial Benchmark -- Scala Version
 * This software is in the public domain
 */
import scala.math

object scfact {
  def fact(acc: BigInt, n: BigInt): BigInt = {
    if (n == 1) acc
    else fact(acc * n, n-1)
  }

  def main(args: Array[String]) = {
    println(fact(1, BigInt(args(0))))
  }
}
