# Trivial Factorial Benchmark -- Python Version
# This software is in the public domain

import sys

def fact(n):
    acc = 1
    for i in range(2, n+1):
        acc = acc * i
    return acc

print fact(long(sys.argv[1]))
