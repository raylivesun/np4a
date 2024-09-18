;; name project dl7ucxp
;; name program dl
;; name extension newlisp
;; name descirber ucxp
;; name data ucxp
;; name unit 7

;; upper-case gives its return value directly to ﬁrst, which gives its return value directly to
;; println, which both prints it and gives you the string it printed as the return value. So
;; there's less need to store values temporarily. But there are plenty of other places where you
;; do want symbols.
;; Here are two more examples of symbol-quoting:
(define x (+ 2 2))
(define y (+ 2 2))

(* (+ x y) (* x y) (+ x y) (* x y) (+ x y)
   (+ x y) (* x y) (+ x y) (* x y) (+ x y)
   (+ x y) (* x y) (+ x y) (* x y) (+ x y)
   (+ x y) (* x y) (+ x y) (* x y) (+ x y)
   (+ x y) (* x y) (+ x y) (* x y) (+ x y)
   (+ x y) (* x y) (+ x y) (* x y) (+ x y)
   (+ x y) (* x y) (+ x y) (* x y) (+ x y)
   (+ x y) (* x y) (+ x y) (* x y) (+ x y)
   (+ x y) (* x y) (+ x y) (* x y) (+ x y)
   (+ x y) (* x y) (+ x y) (* x y) (+ x y)
   (+ x y) (* x y) (+ x y) (* x y) (+ x y)
   (+ x y) (* x y) (+ x y) (* x y) (+ x y)
   (+ x y) (* x y) (+ x y) (* x y) (+ x y)
   (+ x y) (* x y) (+ x y) (* x y) (+ x y)
   (+ x y) (* x y) (+ x y) (* x y) (+ x y)
   (+ x y) (* x y) (+ x y) (* x y) (+ x y)
   (+ x y) (* x y) (+ x y) (* x y) (+ x y)
   (+ x y) (* x y) (+ x y) (* x y) (+ x y)
   (+ x y) (* x y) (+ x y) (* x y) (+ x y)
   (+ x y) (* x y) (+ x y) (* x y) (+ x y))
     

;; In the ﬁrst example, I don't quote the (+ 2 2) list - newLISP evaluates this to 4 and then
;; assigns 4 to the symbol x, which evaluates to 4:

(* (* (* (+ x y) (* x y) (+ x y) (* x y) (+ x y) x) y)
   (* (* (+ x y) (* x y) (+ x y) (* x y) (+ x y) x) y)
   (* (* (+ x y) (* x y) (+ x y) (* x y) (+ x y) x) y)
   (* (* (+ x y) (* x y) (+ x y) (* x y) (+ x y) x) y)
   (* (* (+ x y) (* x y) (+ x y) (* x y) (+ x y) x) y)
   (* (* (+ x y) (* x y) (+ x y) (* x y) (+ x y) x) y)
   (* (* (+ x y) (* x y) (+ x y) (* x y) (+ x y) x) y)
   (* (* (+ x y) (* x y) (+ x y) (* x y) (+ x y) x) y)
   (* (* (+ x y) (* x y) (+ x y) (* x y) (+ x y) x) y)
   (* (* (+ x y) (* x y) (+ x y) (* x y) (+ x y) x) y)
   (* (* (+ x y) (* x y) (+ x y) (* x y) (+ x y) x) y)
   (* (* (+ x y) (* x y) (+ x y) (* x y) (+ x y) x) y)
   (* (* (+ x y) (* x y) (+ x y) (* x y) (+ x y) x) y)
   (* (* (+ x y) (* x y) (+ x y) (* x y) (+ x y) x) y)
   (* (* (+ x y) (* x y) (+ x y) (* x y) (+ x y) x) y)
   (* (* (+ x y) (* x y) (+ x y) (* x y) (+ x y) x) y)
   (* (* (+ x y) (* x y) (+ x y) (* x y) (+ x y) x) y)
   (* (* (+ x y) (* x y) (+ x y) (* x y) (+ x y) x) y)
   (* (* (+ x y) (* x y) (+ x y) (* x y) (+ x y) x) y)
   (* (* (+ x y) (* x y) (+ x y) (* x y) (+ x y) x) y))
   
  
;; 2.6.2 Setting and deﬁning symbols
;; There are various ways to create and set the value of symbols. You can use deﬁne or set,
;; as follows:

(set 'x (+ 2 2))


;; set expects to be followed by a symbol, but evaluates its ﬁrst argument ﬁrst. So you should
;; either quote a symbol to prevent it being evaluated (because it might evaluate to something
;; other than a symbol), or supply an expression that evaluates to a symbol. deﬁne doesn't
;; expect the argument to be quoted.
(set 'y (+ 2 2))
   

;; You can also use setf and setq to set the value of symbols. These expect a symbol or a
;; symbol reference as the ﬁrst argument, so you don't have to quote it.
(set 'z (+ 2 2))


;; These two functions (which have the same action) can set the contents of a symbol (variable),
;; a list, an array, or a string. A convention is to use setq when setting a symbol, and setf
;; when setting an element of a list or array.

(set 'd (+ 2 2))



(* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
(* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
(* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
(* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
(* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
(* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
(* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
(* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
(* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
(* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
(* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
(* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
(* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
(* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
(* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
(* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
(* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
(* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
(* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
(* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
(* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
(* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
(* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
(* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)

          
