# Trivial Factorial Benchmark -- CPython Version
# This software is in the public domain

def fact(long n):
    cdef object acc = <object>1
    cdef long i = 1
    while (i <= n):
        acc = acc * i
        i += 1
    return acc
