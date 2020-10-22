#lang racket

;Importing membership.rkt
(define (membership atom my_list)
  (cond
       ((null? my_list) #f)
       ((eq? atom (car my_list)) #t)
       (else (membership atom (cdr my_list)))
 ))

;Defining the function
(define (my_union list1 list2)
  (if (not(list? list1)) #f (if (not(list? list2)) list1 (if (null? list2) list1 (if (not(membership (car list2) list1)) (list list1 (car list2) (my_union list1 (cdr list2))) #f))))
)

;Function Calls
(my_union 789 '(A B C D))
(my_union '(A B C D) 654)
(my_union '(A B C D) '())
(my_union '(A B C D) '(X Y Z W))
