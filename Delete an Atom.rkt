#lang racket
;Defining the function
(define (my_delete atom myList)
  (if (eqv? (car myList) atom) (cdr myList) #f)

)