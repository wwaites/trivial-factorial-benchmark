;; Trivial Factorial Benchmark -- GNU Guile Version
;; This software is in the public domain
(define (facti n x)
  (if (< x 2) n
      (facti (* n x) (- x 1))))
(define (fact x) (facti 1 x))

(use-modules (ice-9 format))
(let ((n (string->number (car (cdr (command-line))))))
  (format #t "~A\n" (fact n)))
