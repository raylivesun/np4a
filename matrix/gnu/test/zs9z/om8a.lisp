;; name project om8a
;; name program om
;; name extension newlisp
;; name describer a
;; name data 8
;; name unit 8

;; You must supply a local variable with these forms. Even if you don't use it, you have to
;; provide one.

;; Notice that counting starts at 0 and continues to n - 1, never actually reaching the speciﬁed
;; value. Programmers think this is sensible and logical; non-programmers just have to get
;; used to starting their counting at 0 and specifying 10 to get 0 to 9.
;; One way to remember this is to think about birthdays. You celebrate your 1st birthday
;; when you complete your ﬁrst year, during which time you were 0 years old. You complete
;; your ﬁrst 10 years of life when you start celebrating your 10th birthday, which starts when
;; you stop being 9. The newLISP function ﬁrst gets the element with index number 0...

;; Use dotimes when you know the number of repetitions, but use for when you want newLISP
;; to work out how many repetitions should be made, given start, end, and step values:

;; Here newLISP is smart enough to work out that I wanted to step down from 1 to -1 in steps
;; of 0.5.
;; Just to remind you of this counting from 0 thing again, compare the following two
;; functions:

(for (x 1 10) (println x))

(dotimes (x 10) (println x))


;; 3.2.4 An escape route is available

;; for, dotimes, and dolist like to loop, carrying out a set of actions over and over again.
;; Usually the repetition continues, inexorably, until the limit - the ﬁnal number, or the last
;; item in the list - is reached. But you can specify an emergency escape route in the form of
;; a test to be carried out before the next loop starts. If this test returns true, the next loop
;; isn't started, and the expression ﬁnishes earlier than usual. This provides you with a way
;; of stopping before the oﬃcial ﬁnal iteration.
;; For example, suppose that you want to halve every number in a list, but (for some reason)
;; wanted to stop if one of the numbers was odd. Compare the ﬁrst and second versions of
;; this dolist expression:

(define number-list '(100 300 500 701 900 1100 1300 1500))
; first version
(dolist (n number-list)
(println (/ n 2)))
; second version
(dolist (n number-list (!= (mod n 2) 0)) ; escape if true
(println (/ n 2)))

;; The second version stops looping if the test for n being odd, (!= (mod n 2) 0), returns true.
;; Notice the use of integer-only division here. I've used / rather than the ﬂoating-point
;; division operator div as part of the example. Don't use one if you want the other!
;; You can supply escape route tests with for and dotimes too.
;; For more complex ﬂow control, you can use catch and throw. throw passes an expression
;; to the previous catch expression which completes and returns the value of the expression:
(catch
(for (i 0 9)
(if (= i 5) (throw (string "i was " i)))
(print i " ")))


;; and the catch expression returns i was 5.
;; You can also devise ﬂows using Boolean functions. See Blocks: groups of expressions6 .

;; 3.2.5 Until something happens, or while something is true

;; You might have a test for a situation that returns nil or () when something interesting
;; happens, but otherwise returns a true value, which you're not interested in. To repeatedly
;; carry out a series of actions until the test fails, use until or do-until:

(until (disk-full?)
       (println "Adding another file")
       (add-file)
       (inc counter))

(do-until (disk-full?)
       (println "Adding another file")
       (add-file)
       (inc counter))

;; The diﬀerence between these two is to do with when the test is carried out. In until, the
;; test is made ﬁrst, then the actions in the body are evaluated if the test fails. In do-until,
;; the actions in the body are evaluated ﬁrst, before the test is made, then the test is made
;; to see if another loop is possible.

;; Which of those two fragments of code is correct? Well, the ﬁrst one tests the capacity of
;; the disk before adding a ﬁle, but the second one, using do-until, doesn't check for free disk
;; space until the ﬁle is added, which isn't so cautious.
;; while and do-while are the complementary opposites of until and do-until, repeating a
;; block while a test expression remains true.

(while (disk-has-space)
       (println "Adding another file")
       (add-file)
       (inc counter))

(do-while (disk-has-space)
     (println "Adding another file")
     (add-file)
     (inc counter))


;; 3.3 Blocks: groups of expressions
;; A lot of newLISP control functions let you construct a block of actions: a group of expres-
;; sions that are evaluated one by one, one after the other. Construction is implicit: you don't
;; have to do anything except write them in the right order and in the right place. Look at
;; the while and until examples above: each has three expressions that will be evaluated one
;; after the other.
;; However, you can also create blocks of expressions explicitly using the begin, or, and and
;; functions.
;; begin is useful when you want to explicitly group expressions together in a single list. Each
;; expression is evaluated in turn:

(begin
   (switch-on)
   (engage-thrusters)
   (look-in-mirror)
   (press-accelerator-pedal)
   (release-brake)
; ...
)

;; and so on. You normally use begin only when newLISP is expecting a single expression.
;; You don't need it with dotimes or dolist constructions, because these already allow more
;; than one expression.
;; It doesn't matter what the result of each expression in a block is, unless it's bad enough to
;; stop the program altogether. Returning nil is OK:

(begin
  (println "so far, so good")
  (= 1 3)
  ; returns nil but I don't care
  (println "not sure about that last result"))


