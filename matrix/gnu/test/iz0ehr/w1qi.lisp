;; name project pz5ra
;; name program pz
;; name extension newlisp
;; name describer ra
;; name data 5
;; name unit 5

;; There are other ways of declaring local variables. You might ﬁnd the following technique
;; easier to write when you're deﬁning your own functions. Watch the comma:
(define (my-function x y a b c)
; x y a b and c are local variables inside this function
; and 'shadow' any value they might have had before
; entering the functions 
; The comma is a clever trick: it's an ordinary symbol name like c or x:
(set ', "and is string")
(println ,)) 

;; - it's just less likely that you'd use it as a symbol name, and so it's useful as a visual
;; separator in argument lists.

;; 3.8.1 Default values
;; In a function deﬁnition, the local variables that you deﬁne in the function's argument list
;; can have default values assigned to them, which will be used if you don't specify values
;; when you call the function. For example, this is a function with three named arguments, a,
;; band c:

(define (foo (a 1) b (c 2))
    (println a " " b "" c))
    
;; The symbols a and c will take the values 1 and 2 if you don't supply values in the function
;; call, but b will be nil unless you supply a value for it.
(foo)       

;; 1 nil 2 > (foo 2) ; no values for b or c; c has default 2 nil 2 > (foo 2 3) ; b has a value, c
;; uses default 2 3 2 > (foo 3 2 1) ; default values not needed 3 2 1 >

