;; name project dl1ii
;; name program dl
;; name extension newlisp
;; name describer ii
;; name data 1
;; name unit 1

;; 3.5 Selection: if, cond, and case
;; To test for a series of alternative values, you can use if, cond, or case. The case function
;; lets you execute expressions based on the value of a switching expression. It consists of a
;; series of value/expression pairs:
(case n
     (1
     (2
     (3
     (4
        (true
        (println "un"))
        (println "deux"))
        (println "trois"))
        (println "quatre"))
        (println "je ne sais quoi")))
        
;; newLISP works through the pairs in turn, seeing if n matches any of the values 1, 2, 3, or
;; 4. As soon as a value matches, the expression is evaluated and the case function ﬁnishes,
;; returning the value of the expression. It's a good idea to put a ﬁnal pair with true and a
;; catch-all expression to cope with no matches at all. n will always be true, if it's a number,
;; so put this at the end.
;; The potential match values are not evaluated. This means that you can't write this:

(case n
    ((- 2 1)
    ((+ 2 0)
    ((- 6 3)
    ((/ 16 4)
        (true
        (println "un"))
        (println "deux"))
        (println "trois"))
        (println "quatre"))
        (println "je ne sais quoi")))        
        
        
;; even though this ought logically to work: if n is 1, you would expect the ﬁrst expression (-
;; 2 1) to match. But that expression hasn't been evaluated - none of the sums have. In this
;; example, the true action (println "je ne sais quoi") is evaluated.
;; If you prefer to have a version of case that evaluates its arguments, that's easily done in
;; newLISP. See Macros7 .
;; Earlier I mentioned that cond is a more traditional version of if. A cond statement in
;; newLISP has the following structure:        

(cond
  (test action1 action2 etc)
  (test action1 action2 etc)
  (test action1 action2 etc)
;
...
)

;; where each list consists of a test followed by one or more expressions or actions that are
;; evaluated if the test returns true. newLISP does the ﬁrst test, does the actions if the test is
;; true, then ignores the remaining test/action loops. Often the test is a list or list expression,
;; but it can also be a symbol or a value.
;; A typical example looks like this:

(cond
    ((< x 0)    (define a "impossible"))
    ((< x 10)   (define a "small"))
    ((< x 20)   (define a "medium"))
    ((>= x 20)  (define a "large"))
    )


;; which is essentially the same as the if version, except that each pair of test-actions is enclosed
;; in parentheses. Here's the if version for comparison:
(if
  (< x 0)   (define a "impossible")
  (< x 10)  (define a "small")
  (< x 20)  (define a "medium")
  (>= x 20) (define a "large"))
  
;; For simpler functions, it might be easier to work with if. But cond can be more readable
;; when writing longer programs. If you want the action for a particular test to evaluate more
;; than one expression, cond's extra set of parentheses can give you shorter code:
(cond
   ((< x 0)     (define a 1))  ;; if local one and begin writing and reading
   ((< x 10)    (println a))    ;; if local two and begin writing and reading
   ((< x 20)    (define b 1))  ;; if local third and begin writing and reading
   ((>= x 20)   (define a 5)))

;; 3.6 Variables local to a control structure

;; The control functions dolist, dotimes, and for involve the deﬁnition of temporary local
;; symbols, which survive for the duration of the expression, then disappear.
;; Similarly, with the let and letn functions, you can deﬁne variables that exist only inside a
;; list. They aren't valid outside the list, and they lose their value once the list has ﬁnished
;; being evaluated.
;; The ﬁrst item in a let list is a sublist containing variables (which don't have to be quoted)
;; and expressions to initialize each variable. The remaining items in the list are expressions
;; that can access those variables. It's a good idea to line up the variable/starting value pairs:

;; This example creates three local variables, x, y, and z, and assigns values to each. The
;; body contains three println expressions. After these ﬁnish, the values of x, y, and z are no
;; longer accessible - although the entire expression returns the value 16, the value returned
;; by the ﬁnal println statement.
;; The structure of a let list is easily remembered if you imagine it on a single line:

(let ((x 1) (y 2) (x y))) 

;; If you want to refer to a local variable elsewhere in the ﬁrst, initialization, section, use letn
;; rather than let:

(let
   ((x 2) (x 2) (y 2) (x 3)
    (z 2) (x 4) (y 2) (x 3))
    (println x)
    (println y)
    (println z))


