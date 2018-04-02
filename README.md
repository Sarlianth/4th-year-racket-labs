# Theory of Algorithms CA 2018

## Introduction

**Student name:** Adrian Sypos

**Student ID:** G00309646

**Module name:** Theory of Algorithms

**Lecturer:** Dr. Ian McLoughlin


This repository cointains my solutions for several tasks for the module called Theory of Algorithms thought by Dr. Ian McLoughlin 

The purpose of these problems is to develop an understaning of Functional Programing and to learn how to effectively solve problems using only primitive functions. We are only allowed to use the following functions: `cons`, `car`, `cdr`, `define`, `lambda`, `if`, `null`, `null?`, `cond`, `map`, `=` and the basic numerical operations `(+, -, *, /, modulo)`. 

## What is Racket?
Racket is a general purpose, multi-paradigsm programming language in the Lisp-Scheme family. One of its design goals is to serve as a platform for language creation, design and implementation. It's the wold's first ecosystem for developing and deploying new languages. 

## Dr. Racket
DrRacket is a graphical environemnt for developing programs using the Racket programing language. You can download it here: http://racket-lang.org/download/
To solve the problems I am going to use Dr Racket and the most basic functions listed on the top of this document.

## What is functional programming?
Functional programming languages are specially designed to handle symbolic computation and list processing applications. Functional programming is based on mathematical functions. 

Advantages of functional programming:
* Bugs-free code - functional programming does not support state, so there are no side-effects results and we can write error-free codes.
* Efficiency - Functional programs consist of independet units that can run concurrently. As a result, such programs are more efficient.
* Supports nested functions

## Getting started with Racket
For windows users, download DrRacket from the following website; http://racket-lang.org/download/

For Mac users you can install Racket using Homebrew
`brew install racket`

## Functions explained
`cons` - The cons function actually accepts any two values, not just a list for the second argument. When the second argument is not empty and not itself produced by cons, the result prints in a special way. The two values joined with cons are printed between parentheses, but with a dot e.g.

```racket
> (cons 1 2)
'(1 . 2)

> (cons "banana" "split")
'("banana" . "split")
```

`car` - Returns the first element of the pair.
```racket
(car '(1 2))
1

> (car (cons 2 3))
2
```

`cdr` - Returns the second element of the pair.
```racket
> (cdr '(1 2))
'(2)

> (cdr '(1))
'()
```

`null` - The empty list.
```racket
> null
'()

> '()
'()

> (eq? '() null)
#t
```

`null?` - Returns #t if v is the empty list, #f otherwise.
```racket
> (null? 1)
#f

> (null? '(1 2))
#f

> (null? '())
#t

> (null? (cdr (list 1)))
#t
```

`map` - Applies proc to the elements of the lsts from the first elements to the last. The proc argument must accept the same number of arguments as the number of supplied lsts, and all lsts must have the same number of elements. The result is a list containing each result of proc in order.
```racket
> (map (lambda (number)
         (+ 1 number))
       '(1 2 3 4))
'(2 3 4 5)

> (map (lambda (number1 number2)
         (+ number1 number2))
       '(1 2 3 4)
       '(10 100 1000 10000))
'(11 102 1003 10004)
```

`if` - (if test-expr then-expr else-expr) Evaluates test-expr. If it produces any value other than #f, then then-expr is evaluated, and its results are the result for the if form. Otherwise, else-expr is evaluated, and its results are the result for the if form. The then-expr and else-expr are in tail position with respect to the if form.
```racket
> (if (positive? -5) (error "doesn't get here") 2)
2

> (if (positive? 5) 1 (error "doesn't get here"))
1

> (if 'we-have-no-bananas "yes" "no")
"yes"
```

`cond` - (cond cond-clause ...) A cond-clause that starts with else must be the last cond-clause.

If no cond-clauses are present, the result is #<void>.

If only a [else then-body ...+] is present, then the then-bodys are evaluated. The results from all but the last then-body are ignored. The results of the last then-body, which is in tail position with respect to the cond form, are the results for the whole cond form.

Otherwise, the first test-expr is evaluated. If it produces #f, then the result is the same as a cond form with the remaining cond-clauses, in tail position with respect to the original cond form.
```racket
> (cond)
> (cond
    [else 5])
5

> (cond
   [(positive? -5) (error "doesn't get here")]
   [(zero? -5) (error "doesn't get here, either")]
   [(positive? 5) 'here])
'here

> (cond
   [(member 2 '(1 2 3)) => (lambda (l) (map - l))])
'(-2 -3)

> (cond
   [(member 2 '(1 2 3))])
'(2 3)
```

`define` - (define id expr) The first form binds id to the result of expr, and the second form binds id to a procedure. 
```racket
(define x 10)
 
> x
10


(define (f x)
  (+ x 1))
 
> (f 10)
11

(define ((f x) [y 20])
  (+ x y))
 
> ((f 10) 30)
40

> ((f 10))
30
```

`lambda` - (lambda kw-formals body ...+) Produces a procedure. The kw-formals determines the number of arguments and which keyword arguments that the procedure accepts.
```racket
> ((lambda (x) x) 10)
10

> ((lambda (x y) (list y x)) 1 2)
'(2 1)

> ((lambda (x [y 5]) (list y x)) 1 2)
'(2 1)

> (let ([f (lambda (x #:arg y) (list y x))])
   (list (f 1 #:arg 2)
         (f #:arg 2 1)))
'((2 1) (2 1))
```
## Hamming weight
The hamming weight is basically the number of non-zero symbols in a symbol sequence. It is the number of "1" bits in the binary sequence

## Hamming distance
The hamming distance between two strings of equal length is the number of positions at which the corresponding symbols are different. In other words, it measures the minimum number of sumstitutions required to change one string into the other.

## Problems
Below are listed the problems that I will solve and seperate them into individual folders so they're easily accessible.

1. Write, from scratch, a function in Racket that uses a brute-force algorithm that takes
a single positive integer and return true if the number is a prime and false otherwise.
Call the function `decide-prime`.

2. Write, from scratch, a function in Racket that takes a positive integer *n*<sub>0</sub> as input
and returns a list by recursively applying the following operation, starting with the
input number.

*n*<sub>i+1</sub> = 3*n*<sub>i</sub> + 1 if *n*<sub>i</sub> is odd
*n*<sub>i+1</sub> = *n*<sub>i</sub> ÷ 2

End the recursion when (or if) the number becomes 1. Call the function `collatz-list`.
So, collatz-list should return a list whose first element is *n*<sub>0</sub>, the second element
is *n*<sub>1</sub>, and so on. 

For example:

```racket
> (collatz-list 5)
'(5 16 8 4 2 1)

> (collatz-list 9)
'(9 28 14 7 22 11 34 17 52 26 13 40 20 10 5 16 8 4 2 1)

> (collatz-list 2)
'(2 1)
```

3. Write, from scratch, two functions in Racket. The first is called `lcycle`. It takes a list as input and returns the
   list cyclically shifted one place to the left. The second is called `rcycle`, and it shifts the list cyclically shifted
one plae to the right. 

For Example:

```racket
> (lcycle (list 1 2 3 4 5))
'(2 3 4 5 1)

> (rcycle (list 1 2 3 4 5))
'(5 1 2 3 4)
```

4. Write a function `sublsum` in Racket that takes a list (of integers) as input and returns a list of sublists of it
   that sum to zero. For this problem, you can use the `combinations` built-in function. Note the order of the sublists
and their elements doesn’t matter. 

For example:

```racket
> (sublsum (list 1 2 3 4 -5))
'((2 3 -5) (-5 1 4))

> (sublsum (list 1 2 3 4 5))
'()
```
5. Write a function `hamming-weight` in Racket that takes a list *l* as input and returns the number of non-zero
   elements in it. 

For example:

```racket
> (hamming-weight (list 1 0 1 0 1 1 1 0))
5
```

6. Write a function `hamming-distance` in Racket that takes two lists and returns the number of positions in which they
   differ.

 For example:

```racket
> (hamming-distance (list 1 0 1 0 1 1 1 0) (list 1 1 1 1 0 0 0 0))
5
```

7. Write a function `maj` in Racket that takes three lists *x*, *y* and *z* of equal length 
and containing only 0's and 1's. It should return a list containing a 1 where two or more 
of *x*, *y* and *z* contains 1's and 0 otherwise. 

For example:

```racket
> (maj (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
'(0 0 0 1 0 1 1 1)
```

8. Write a function `chse` in Racket that takes three lists *x*, *y* and *z* of equal length and containing 
only 0's and 1's. It should return a list containing the elements of *y* in the positions where *x* is 1 
and the elements of *z* otherwise. 

For example:

```racket
> (chse (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
'(0 1 0 1 0 0 1 1)
```

9. Write a function `sod2` in Racket that takes three lists *x*, *y* and *z* of equal length and containing 
only 0's and 1's. It should return a list containing a 1 where the number of 1's in a given position 
in *x*, *y* and *z* contains an odd number of 1's and 0 otherwise. 

For example:

```racket
> (sod2 (list 0 0 0 0 1 1 1 1) (list 0 0 1 1 0 0 1 1) (list 0 1 0 1 0 1 0 1))
'(0 1 1 0 1 0 0 1)
```

10. Write a function lstq in Racket that takes as arguments two lists *l* and *m* of equal
length and containing numbers. It should return *d*, the distance given by the sum of
the square residuals between the numbers in the lists:

This means take the *i<sup>th</sup>* element of *m* from the *i<sup>th</sup>* element of *l* and square the
result for all *i*. Then add all of those to get *d*. For example:

```racket
> (lstq (list 4.5 5.1 6.2 7.8) (list 1.1 -0.1 6.1 3.8))
54.61
```

## References

These are all the different sources that I have used to help me solve the problems;

* https://stackoverflow.com/questions/3345626/finding-a-prime-number-in-scheme-using-natural-recursion
* https://stackoverflow.com/questions/41079400/how-to-write-collatz-sequence-using-unfold-in-scheme-racket
* http://juanibiapina.com/articles/2013-12-13-the-collatz-conjecture/
* https://stackoverflow.com/questions/5006750/removing-last-element-of-a-listscheme
* https://stackoverflow.com/questions/13046017/rotate-a-list-to-the-left-in-scheme-racket
* https://stackoverflow.com/questions/29137103/creating-an-append-function-in-racket
* https://stackoverflow.com/questions/17305086/scheme-write-a-function-that-returns-number-of-odd-numbers-in-a-list?rq=1
* https://stackoverflow.com/questions/15019498/scheme-sum-of-list
* https://stackoverflow.com/questions/33425967/scheme-counting-elements-in-the-list
* https://stackoverflow.com/questions/13147582/scheme-adding-2-lists-by-index
* https://stackoverflow.com/questions/33427777/comparing-two-lists-in-scheme
