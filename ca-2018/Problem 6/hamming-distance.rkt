#lang racket

;Write a function hamming-distance in Racket that takes two lists
;and returns the number of positions in which they differ.

; count the number of elements in the list (i need that to make sure the two lists are of the same size)
(define (count l)
  ;if list is null, do nothing
  (if (null? l)
	0
        ;if list is not null, make recursive call for each element and add 1 with each go
	(+ 1 (count (cdr l)))))

; actual function that checks if the digit at x position in list a differs from list b
(define (distance listA listB)
  ;if list A is null, do nothing
  (if (null? listA)
	0
    ;check if the car of listA is the same as car of listB - if it is the same make recursive call
    (if (= (car listA) (car listB))
          ;do nothing and just call the function itself the the cdr of the listA and listB
	  (distance (cdr listA) (cdr listB))
          ;add one if the positions differ and then make a recursive call
	  (+ 1 (distance (cdr listA) (cdr listB))))))

; function that checks if both of the lists are of the same size
(define (hamming-distance listA listB)
  ; if the lists are equal, call the function to calculate the hamming-distance
  (if (= (count listA) (count listB))
         ;call the distance function
	(distance listA listB)
        ;throw an error message
	(displayln "ListA and ListB differ in size")))

;check if the hamming-distance is being calculated properly
(hamming-distance (list 1 0 1 0 1 0) (list 1 0 0 0 0 1))

;just to check if the warning will show up
(hamming-distance (list 1 0) (list 0 0 0 0 0 0 0 0 0))