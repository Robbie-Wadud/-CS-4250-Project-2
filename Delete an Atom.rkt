#lang racket
;Defining the function
(define (my_delete atom myList)
  (cond
    ((null? myList) myList)
    ((list? (car myList))
     (cons (my_delete atom (car myList)) (my_delete atom (cdr myList))))
    ((equal? atom (car myList)) (my_delete atom (cdr myList)))
    (else (cons (car myList) (my_delete atom (cdr myList)))))
  )

(my_delete 3 '(1 3 2 3))
(my_delete 'A '(A B C D A E A F))
(my_delete 'A '(A B (C A) R T (A J K A L) Z))
(my_delete 'A '())