#lang racket

;Write a function sublsum in Racket that takes a list (of integers) as input and returns
;a list of sublists of it that sum to zero. For this problem, you can use the
;combinations built-in function. Note the order of the sublists and their elements
;doesn’t matter

;Function that sums all elements of the list
;I will use it in combination with another function to return sublists of lists that sum to zero
(define (sum_list l)
  (if (null? l) 0
      (+ (car l) (sum_list (cdr l)))))

;function that will check for sublists that equal to zero
(define (sublsum_help l)
  (if (null? l)
	'()
        ;if sum of the car of combinations is equal to 0 and it isn't null
	(if (and (= (sum_list (car l)) 0) (not (null? (car l))))
           ;pair the first element with a recursive function passing cdr as param
	  (cons (car l) (sublsum_help (cdr l)))
       ;recursive function call passing the cdr as param
      (sublsum_help (cdr l)))))

;function to actually iterate through all possible combinations of list
(define (sublsum l)
  ;if the list that has been passed as param is empty return empty list
  (if (null? l)
      '()
      ;if the list is not empty check for lists that sum to zero passing all combinations of the list
      (sublsum_help (combinations l))))

(sum_list (list 1 2 3 4 -5))

(sublsum (list 1 2 3 4 -5))

(sublsum (list 1 2 3 4 5))