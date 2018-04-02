#lang Racket
(define (remove_last lst)
  (if(null? (cdr lst))
     null
     (cons (car lst) (remove_last (cdr lst)))))

(define (last_element l)
    (cond
      [(null? (cdr l)) (car l)]
      [else (last_element (cdr l))]))

(define (rcycle liste)
  (cons (last_element liste) (remove_last liste)))

  
(rcycle (list 1 2 3 4 5))
