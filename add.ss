#lang racket
;scan two numbers, and from STDIN, and print the sum on STDOUT. 
(define (sum-of-two-integers a b)
  (+ a b))

(let ((a (read))
      (b (read)))
  (printf "~a~%" (sum-of-two-integers a b)))
