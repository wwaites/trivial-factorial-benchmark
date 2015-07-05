// Trivial Factorial Benchmark -- Go version
// This software is in the public domain

package main

import "flag"
import "fmt"
import "math/big"

func fact(n *big.Int) *big.Int {
	acc := big.NewInt(1)
	one := big.NewInt(1)
	for i := big.NewInt(1); i.Cmp(n) != 1; i.Add(i, one) {
		acc.Mul(acc, i)
	}
	return acc
}

func main() {
	n := flag.Int64("n", 1, "Number")
	flag.Parse()
	f := fact(big.NewInt(*n))
	fmt.Printf("%d\n", f)
}
