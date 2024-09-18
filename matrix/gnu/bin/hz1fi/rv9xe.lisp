;; name project rv9xe
;; name program rv
;; name extension newlisp
;; name describer xe
;; name data 9
;; name unit 9

;; 3.7 Make your own functions
;; The deﬁne function provides a way to store a list of expressions under a name, suitable for
;; running later. The functions you deﬁne can be used in the same way as newLISP's built-in
;; functions. The basic structure of a function deﬁnition is like this:

 (define (func1)
    (expression-1)
    (expression-2)
    ; ...
    (expression-n)
)

;; when you don't want to supply any information to the function, or like this, when you do:

(define (func2 v1 v2 v3)
   (expression-1)
   (expression-2)
   ; ...
(expression-n)
)


;; You call your newly deﬁned function like any other function, passing values to it inside the
;; list if your deﬁnition requires them:

(func1)
(func2 a b c)


;; I say expected, but newLISP is ﬂexible. You can supply any number of arguments to func1,
;; and newLISP won't complain. You can also call func2 with any number of arguments - in
;; which case a, b, and c are set to nil at the start if there aren't enough arguments to deﬁne
;; them.
;; When the function runs, each expression in the body is evaluated in sequence. The value
;; of the last expression to be evaluated is returned as the function's value. For example, this
;; function returns either true or nil, depending on the value of n:

(define (is-3? n)
   (= n 3))
(println (is-3? 2))
;; nil
(println (is-3? 3))
;; true

;; Sometimes you'll want to explicitly specify the value to return, by adding an expression at
;; the end that evaluates to the right value:

(define (answerphone)
   (pick-up-phone)
   (say-message)
   (set 'message (record-message))
   (put-down-phone)
   message)

;; The message at the end evaluates to the message received and returned by (record-message)
;; and the (answerphone) function returns this value. Without this, the function would return
;; the value returned by (put-down-phone), which might be just a true or false value.
;; To make a function return more than one value, you can return a list.
;; Symbols that are deﬁned in the function's argument list are local to the function, even if
;; they exist outside the function beforehand:

(set 'v1 999)
   (define (test v1 v2)
   (println "v1 is " v1)
   (println "v2 is " v2)
   (println "end of function"))
(test 1 2)


;; If a symbol is deﬁned inside a function body like this:
(define (test v1)
    (set 'x v1)
    (println x))
(test 1)


;; it's accessible from outside the function as well. That's why you'll want to deﬁne local
;; variables! See Local variables8 .
;; newLISP is smart enough not to worry if you supply more than the required information:

(define (test)
   (println "hi there"))
(test 1 2 3 4)   


;; but it won't ﬁll in gaps for you:
(define (test n)
   (println n))


;; 3.8 Local variables
;; Sometimes you want functions that change the values of symbols elsewhere in your code,
;; and sometimes you want functions that don't - or can't. The following function, when run,
;; changes the value of the x symbol, which may or may not be deﬁned elsewhere in your code:   
(define (changes-symbol)
    (set 'x 15)
    (println "x is " x))

;; x is still 10 outside the function. The x inside the function is not the same as the x outside.
;; When you use set to change the value of the local x inside the function, it doesn't change
;; any x outside:

(define (does-not-change-x)
  (let (x 15)
  ; this x is inside the 'let' form
  (set 'x 20)))
  
;; instead of let and letn you can use the local function. This is like let and letn, but you
;; don't have to supply any values for the local variables when you ﬁrst mention them. They're
;; just nil until you set them:
  
(define (test)
   (local (a b c)
       (println a " " b " " c)
       (set 'a 1 'b 2 'c 3)
       (println a " " b " " c)))
(test)       
         

