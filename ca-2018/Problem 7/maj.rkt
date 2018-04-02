#lang racket

;Write a function maj in Racket that takes three lists x, y and z of equal length and
;containing only 0’s and 1’s. It should return a list containing a 1 where two or more
;of x, y and z contain 1’s, and 0 otherwise.

; function to check_elements passing list produced by map function, which basically
; adds digits which are in three different lists at the same index
; for example (0 0 1 0 0) (0 0 1 1 0) (0 0 1 1 1) will result in (0 0 3 2 1)
(define (maj x y z)
  ; as explained above pass a list after combining the three together
  (check_elements (map (lambda (x y z) (+ x y z)) x y z)))

(define (check_elements l)
  ; first check if the list is null or not 
  (if (null? l)
      '()
      ; check if the digit in the list is larger than 1 (meaning 1 appeared at least in two lists at the same element)
      (if (> (car l) 1)
          ; if the digit is greater than 1 (meaning 1 appeared in at least two of the three lists, add 1 to new list)
          (cons 1 (check_elements (cdr l)))
          ; if the digit is either 0 or 1 just add 0 to new list)
          (cons 0 (check_elements (cdr l))))))

; check elements if the digit is larger than 1 mark it as 1, otherwise replace with 0
(check_elements (list 1 0 2 1 0 1))

; check the function if it works properly
(maj (list 0 0 1 0 0) (list 0 0 1 1 0) (list 0 0 1 1 1))

; example from problem sheet
(maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1)) ;expected result '(0 0 0 1 0 1 1 1)