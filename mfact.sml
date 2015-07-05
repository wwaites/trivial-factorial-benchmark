fun fact a n  : IntInf.int =
    if n=1
    then a
    else fact (a * n) (n - 1)

fun doit() =
    print (IntInf.toString (fact 1 200000) ^ "\n")

val _ = doit()
