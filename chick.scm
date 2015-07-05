;; Trivial Factorial Benchmark -- Chicken Scheme Version
;;
;; (main program)
;;
;; This software is in the public domain
;;
(use numbers)
(load "cfact.so")
(let ((n (string->number (car (command-line-arguments)))))
  (printf "~A\n" (factr 1 n)))
