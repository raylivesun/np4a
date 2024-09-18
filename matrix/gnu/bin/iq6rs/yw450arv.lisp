;; name project yw450arv
;; name program yw
;; name extension newlisp
;; name describer arv
;; name data 450
;; name unit 450

;; If a symbol evaluates to nil (perhaps because it doesn't exist or hasn't been assigned a
;; value), newLISP considers it false and the test returns nil (because there was no alternative
;; action provided):

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



(if snack (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
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
          then
          (format t "The call snack..." snack))

(if wetkiss (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
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
            then
            (format t "The call snack..." wetkiss))


(if peanut-brittle (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
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
            then
            (format t "The call snack..." peanut-brittle))


(if cookies (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
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
            then
            (format t "The call snack..." cookies))
            

(if cheese (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
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
            then
            (format t "The call snack..." cheese))
            
(if coffee (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
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
            then
            (format t "The call snack..." coffee))
            
            

