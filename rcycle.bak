#lang Racket

(define (rcycle lst)
  (define (cycle l)
    (cond
      [(null? (cdr l)) (car l)]
      [else (cycle (cdr l))])
  (cons (cycle lst) lst))
  (if(null? (cdr lst))
     null
     (cons (car lst) (rcycle (cdr lst)))))
  
(rcycle (list 1 2 3 4 5))