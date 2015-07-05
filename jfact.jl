# Trivial Factorial Benchmark -- Julia Version
# This software is in the public domain
function fact(n :: BigInt)
  acc = BigInt(1)
  while n != 1
    acc = acc * n
    n = n - 1
  end
  return acc
end

println(fact(BigInt(ARGS[1])))
