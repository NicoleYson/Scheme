#lang racket
;this checks if a list contains a repeating pattern
(define (check-X l)
	(cond
		;if the list (l) is empty, then there is no pattern
		((empty? l) false) 
		;If list is not empty and the first element of te list is 'a
		;then the rest of the list is sent to the Y func 
		;to determine if the rest of the list starts with 'Y
		(equal? (first l) 'x' (check-Y (rest l))) 
		;If the first element of the list is not in 'x and isn't empty
		;then the pattern isn't tere, funciton evals to false
		(else false)))

;This is similar to check-X
(define (check-Y l)
	(cond 
		((empty? l) false) 
		((equal? (first l) 'y)
		(cond
			((equal? (length l) 1) true)
			(else (check-X (rest l)))))
(else false)))
