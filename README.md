# Theory of Algorithms CA 2018

## Introduction

**Student name:** Adrian Sypos

**Student ID:** G00309646

**Module name:** Theory of Algorithms

**Lecturer:** Dr. Ian McLoughlin


This repository cointains my solutions for several tasks for the module called Theory of Algorithms thought by Dr. Ian McLoughlin 

The purpose of these problems is to develop an understaning of Functional Programin and to learn how to effectively solve problems using only promitive functions. We are only allowed to use the following functions: `cons`, `car`, `cdr`, `define`, `lambda`, `if`, `null`, `null?`, `cond`, `map`, `=` and the basic numerical operations `(+, -, *, /, modulo)`. 

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
