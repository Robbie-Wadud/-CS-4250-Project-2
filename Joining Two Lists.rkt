#lang racket
(define (membership atom my_list)
  (cond
       ((null? my_list) #f)
       ((eq? atom (car my_list)) #t)
       (else (membership atom (cdr my_list)))
 ))

;(membership 3 '(2 4 8 3 1))
;(membership 3 '(2 4 8 a 1))


;Defining the function
(define (my_union list1 list2)
  (if (not(list? list1)) #f (if (not(list? list2)) list1 (if (null? list2) list1 (if (not(membership (car list2) list1)) (list list1 (car list2) (my_union list1 (cdr list2))) 69))))



  ;(cond
    ;((not(list? list1)) #f)
    ;((not(list? list2)) list1)
    ;((null? list2) list1)
    ;(((membership (car list2) list1)))

)
  ;(if (not(membership (car list2) list1)) (list list1 (car list2)) (my_union list1 (cdr list2)))

(my_union 789 '(A B C D))
(my_union '(A B C D) 654)
(my_union '(A B C D) '())
(my_union '(A B C D) '(X Y Z W))
;(my_union '(A B C D) '(W X Y Z))
;(my_union '(A B C D) '(B X Y Z))