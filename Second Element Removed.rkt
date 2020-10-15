#lang racket

;Defining the function
(define (rem_second simpleList)
  ;Check to see if the list exists or is empty
  (if (list? simpleList) (if (null? simpleList) simpleList (if (eqv? (cdr simpleList) '()) '() (cons (car simpleList) (cddr simpleList)))) #f)
)

;Function Calls
(rem_second '(A B C D E F))
(rem_second '(1 2 3 4 5 6 7 8 9))
(rem_second '())
(rem_second '(A))
(rem_second 56)