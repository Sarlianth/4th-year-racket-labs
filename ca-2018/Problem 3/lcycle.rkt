#lang racket

; Append function from scratch using only basic functions
(define (append-list listA listB)
    (if (null? listA)
	  listB
	  (cons (car listA) (append-list (cdr listA) listB))))

; Primitive way of defining lcycle, however it is not returnig one list, but a list within a list
(define (lcycle_wrong x) (cons (cdr x) (list (car x))))

; take a list as input and return the list shifted one place to the left
; use my own append function to append first digit to the end of the list
(define (lcycle l)
  (if (null? l)
	'()
	(append-list (cdr l) (list (car l))))) 

; representing the first attempt, not working perfectly
(lcycle_wrong (list 1 2 3 4))

; the right way of doing it
(lcycle (list 1 2 3 4))