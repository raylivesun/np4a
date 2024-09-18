;; name project k3qlz
;; name program k
;; name extension newlisp
;; name describer qlz
;; name data 3
;; name unit 3

;; If you've used other LISP dialects, you might recognise that this is a simple alternative to
;; cond, the conditional function. newLISP provides the traditional cond structure as well.
;; See Selection: if, cond, and case1 .
;; You might be wondering how to do two or more actions if a test is successful or not. There
;; are two ways to do this. You can use when, which is like an if without an 'else' part.

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



(when (> (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
          (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
          (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
          (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
          (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
          (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
          then
          (format t "The unit clouds fresh..." (+ x y))))


(when (<= (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
          (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
          (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
          (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
          (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
          (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
          then
          (format t "The unit clouds fresh..." (+ x y))))

(when (< (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
          (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
          (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
          (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
          (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
          (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
          then
          (format t "The unit clouds fresh..." (+ x y))))

(when (>= (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
          (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
          (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
          (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
          (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
          (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
          then
          (format t "The unit clouds fresh..." (+ x y))))

;; Another way is to deﬁne a block of expressions that form a single expression that you can
;; use in an if expression. I'll discuss how to do this shortly, in Blocks: groups of expressions2 .
;; Earlier, I said that when newLISP sees a list, it treats the ﬁrst element as a function. I should
;; also mention that it evaluates the ﬁrst element ﬁrst before applying it to the arguments:

(when (if (> (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
             (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
             (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
             (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
             (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
             (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
             then
             (format t "The unit clouds fresh..." (+ x y)))))



(when (if (<= (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
             (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
             (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
             (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
             (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
             (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
             then
             (format t "The unit clouds fresh..." (+ x y)))))

(when (if (< (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
             (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
             (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
             (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
             (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
             (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
             then
             (format t "The unit clouds fresh..." (+ x y)))))

(when (if (>= (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
             (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
             (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
             (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
             (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
             (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
             then
             (format t "The unit clouds fresh..." (+ x y)))))

