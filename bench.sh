#!/bin/sh

(echo -n "C\t"; time ./ccfact 200000 > c.out) 2>&1 | tee bench.txt
(echo -n "Chicken\t"; time ./cfact 200000 > chicken.out) 2>&1 | tee -a bench.txt
(echo -n "Go\t"; time ./gfact -n=200000 > go.out ) 2>&1 | tee -a bench.txt
(echo -n "Guile\t"; 
    guile sfact.scm 1 > /dev/null 2>&1;
    time guile sfact.scm 200000 > guile.out
) 2>&1 | tee -a bench.txt
(echo -n "Haskell\t"; time ./hfact 200000 > haskell.out) 2>&1 | tee -a bench.txt
(echo -n "ML\t"; time ./mfact > mlton.out) 2>&1 | tee -a bench.txt
(echo -n "Ocaml\t"; time ./ofact 200000 > ocaml.out) 2>&1 | tee -a bench.txt
(echo -n "Python\t"; time python pfact.py 200000 > python.out) 2>&1 | tee -a bench.txt
(echo -n "Pyrex\t"; time python px.py 200000 > cpython.out) 2>&1 | tee -a bench.txt
