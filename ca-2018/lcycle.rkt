#lang racket

(define (lcycle x) (cons (cdr x) (list (car x))))

(lcycle (list 1 2 3 4))