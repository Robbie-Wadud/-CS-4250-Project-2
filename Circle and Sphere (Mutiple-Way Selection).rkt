#lang racket
(define pi 3.1416)

;Defining the function
(define (my_calc theInt radius)
  (cond
    ((eqv? theInt 1) (* pi radius radius))
    ((eqv? theInt 2) (/ (* pi 4 radius radius radius) 3))
    ((< theInt 0) #f)
    (else #f)
  )
)

;Function Calls
(my_calc 1 5)
(my_calc 2 5)
(my_calc -5 5)
(my_calc 13 5)