;; name project ra1acj1
;; name program ra1
;; name extension newlisp
;; name describer acj
;; name unit 1
;; name data 1


;; 2.7 Constructive Restore Local

;; Some newLISP functions modify the values of the symbols that they operate on, others
;; create a copy of the value and return that. Technically, the ones that modify the contents
;; of symbols are described as constructive restores - although you'll often be using them
;; to create new data. In this document I'll describe functions such as push and replace as
;; constructive. This simply means that they change the value of something rather than return
;; a modiﬁed local.


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

          

;; 3 Controlling the ﬂow

;; There are many diﬀerent ways to control the ﬂow of your code. If you've used other scripting
;; languages, you'll probably ﬁnd your favourites here, and many more besides.
;; All the control ﬂow functions obey the standard rules of newLISP. The general form of each
;; is usually a list in which the ﬁrst element is a keyword followed by one or more expressions
;; to be evaluated:

;; (keyword expression1 expression2 expression3 ...)       

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


;; 3.1 Tests: if...

;; Perhaps the simplest control structure you can write in any language is a simple if list,
;; consisting of a test and an action:

;; (if button-pressed? (launch-build-restore))

;; The second expression, a call to the launch-build-restore function, is evaluated only if the symbol
;; button-pressed? evaluates to true. 1 is true. 0 is true - it's a number, after all. -1 is true.
;; Most of the things that newLISP already knows about are true. There are two important
;; things that newLISP knows are false rather than true: nil and the empty list (). And
;; anything that newLISP doesn't know the value of is false.

(if (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
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
    (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z))
    
;; You can use anything that evaluates to either true or false as a test:    

(if (> (* (+ x y) (+ x y) (* x y) (+ x y) (+ x y) (+ x y) x)
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
    (* (+ z d) (+ z d) (* z d) (+ z d) (+ z d) (+ z d) z))
    then
    (println "Constructive called of build restored")) 

