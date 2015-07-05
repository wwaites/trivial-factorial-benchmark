;; Trivial Factorial Benchmark -- Chicken Scheme Version
;; This software is in the public domain
;;

; tail recursive version
(: factr (fixnum fixnum -> fixnum))
(define (factr n x)
  (if (= x 1) n
      (factr (* n x) (- x 1))))

; not quite tail recursive version
(: fact (fixnum -> fixnum))
(define (fact x) 
  (if (= x 1) 1
      (* x (fact (- x 1)))))
