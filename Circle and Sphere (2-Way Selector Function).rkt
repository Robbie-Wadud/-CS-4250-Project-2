#lang racket
(define pi 3.1416)

;Defining the function
(define (my_calc theInt radius)
  (if (eqv? theInt 1) (* pi radius radius) (if (eqv? theInt 2) (/ (* pi 4 radius radius radius) 3) (if (< theInt 0) #f #f)))
)

;Function Calls
(my_calc 1 5)
(my_calc 2 5)
(my_calc -5 5)
(my_calc 13 5)