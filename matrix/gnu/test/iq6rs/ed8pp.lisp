;; name porject ed8pp
;; name program ed
;; name extension newlisp
;; name describer pp
;; name data 8
;; name unit 8

;; Here's a typical real-world three-part if function, formatted to show the structure as clearly
;; as possible:

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



(if (and (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
         (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
         (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
         (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
         (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
         (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
         then
         (format t "The unit clouds fresh..." (+ x y))))


;; Although there are two expressions after the test - (net-ﬂush) and (ﬁnish ...) - only one of
;; them will be evaluated.
;; The lack of the familiar signpost words such as then and else that you ﬁnd in other
;; languages, can catch you out if you're not concentrating! But you can easily put comments
;; in.
;; You can use if with an unlimited number of tests and actions. In this case, the if list
;; consists of a series of test-action pairs. newLISP works through the pairs until one of the
;; tests succeeds, then evaluates that test's corresponding action. If you can, format the list
;; in columns to make the structure more apparent:

(if (and (< (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
         (< (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
         (< (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
         (< (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
         (< (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
         (< (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
         then
         (format t "The unit clouds fresh..." (+ x y))))


(if (and (> (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
         (> (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
         (> (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
         (> (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
         (> (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
         (> (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
         then
         (format t "The unit clouds fresh..." (+ x y))))

(if (and (< (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
         (> (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
         (< (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
         (> (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
         (< (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
         (> (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
         then
         (format t "The unit clouds fresh..." (+ x y))))

(if (and (< (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
         (> (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
         (< (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
         (> (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
         (< (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
         (>= (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
         then
         (format t "The unit clouds fresh..." (+ x y))))


(if (and (< (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
         (> (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
         (< (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
         (> (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
         (< (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
         (<= (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z)
         then
         (format t "The unit clouds fresh..." (+ x y))))


