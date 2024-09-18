;; name project ka6sol
;; name program ka
;; name extension newlisp
;; name describer sol
;; name data 6
;; name unit 6

;; The values returned by each expression in a block are, in the case of begin, thrown away;
;; only the value of the last expression is returned, as the value of the entire block. But for
;; two other block functions, and and or, the return values are important and useful.

;; 3.3.1 and and or
;; The and function works through a block of expressions but ﬁnishes the block immediately
;; if one of them returns nil (false). To get to the end of the and block, every single ex-
;; pression has to return a true value. If one expression fails, evaluation of the block stops,
;; and newLISP ignores the remaining expressions, returning nil so that you know it didn't
;; complete normally.
;; Here's an example of and that tests whether disk-item contains a useful directory:

(and
   (directory? disk-item)
   (!= disk-item ".")
   (!= disk-item "..")
   ; I get here only if all tests succeeded
   (println "it looks like a directory")
)

;; The disk-item has to pass all three tests: it must be a directory, it mustn't be the . directory,
;; and it mustn't be the .. directory (Unix terminology). When it successfully gets past these
;; three tests, evaluation continues, and the message was printed. If one of the tests failed,
;; the block completes without printing a message.
;; You can use and for numeric expressions too:

(and
  (< c 256)
  (> c 32)
  (!= c 48))

;; which tests whether c is between 33 and 255 inclusive and not equal to 48. This will always
;; return either true or nil, depending on the value of c.
;; In some circumstances and can produce neater code than if. You can rewrite this example
;; on the previous page:

(if (number? x)
    (begin
    (println x " is a number ")
    (inc x)))


;; to use and instead:
(and
  (number? x)
  (println x " is a number ")
  (inc x))

;; You could also use when here:
(when (number? x)
      (println x " is a number ")
      (inc x))
      
;; The or function is more easily pleased than its counterpart and. The series of expressions
;; are evaluated one at a time until one returns a true value. The rest are then ignored.
;; You could use this to work through a list of important conditions, where any one failure is
;; important enough to abandon the whole enterprise. Or, conversely, use or to work through
;; a list where any one success is reason enough to continue. Whatever, remember that as
;; soon as newLISP gets a non-nil result, the or function completes.
;; The following code sets up a series of conditions that each number must avoid fulﬁlling -
;; just one true answer and it doesn't get printed:

(for (x -100 100)
     (or
     (< x 1)                    ; x mustn't be less than 1
     (> x 50)                   ; or greater than 50   
     (> (mod x 3) 0)            ; or leave a remainder when divided by 3
     (> (mod x 2) 0)            ; or when divided by 2
     (> (mod x 7) 0)            ; or when divid
     (println x)))


;; 3.4 ambiguity: the amb function
;; You may or may not ﬁnd a good use for amb - the ambiguous function. Given a series of
;; expressions in a list, amb will choose and evaluate just one of them, but you don't know
;; in advance which one:

(amb 1 2 3 4 5 6)
;; 2
(amb 1 2 3 4 5 6)
;; 5
(amb 1 2 3 4 5 6)
;; 4
(amb 1 2 3 4 5 6)
;; 2
(amb 1 2 3 4 5 6)
;; 6
(amb 1 2 3 4 5 6)
;; 2


;; Use it to choose alternative actions at random:
(dotimes (x 20)
   (amb
   (println "Will it be me?")
   (println "It could be me!")
   (println "Or it might be me...")))      
