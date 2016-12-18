(define map
  (lambda (f l) ;takes two args- a function and a list
    (if (null? l)
      '()
      (cons(f (car l)) (map f (cdr l))) ;builds a new list by applying the function to every element of the old list
     )
    )
  )
 
 (define reduce
  (lambda (op l id)
    (if (null? l)
      id
      (op (car l) (reduce op (cdr l) id)) )))
      
(define sum
  (lambda f l)
    (reduce + (map f l) 0) ))
