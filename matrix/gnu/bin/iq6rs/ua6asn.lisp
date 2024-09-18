;; name project ua6asn
;; name program ua
;; name extension newlisp
;; name describer asn
;; name unit 6

;; For the ﬁrst expression, newLISP does its job as usual, and enthusiastically evaluates the
;; list, returning the number 4. But for the second expression, as soon as it sees the quotation
;; mark, newLISP doesn't even think about evaluating the list by adding the numbers; it just
;; returns the list, unevaluated.

(define first-newlisp-list '(list x y)
        (let* ((list x y))
              (lambda ((x y))
                      (if (list x y)
                          (list x y)))))
                          

;; This quotation mark does the same job in newLISP that opening and closing quotation
;; marks do in written English - they inform the reader that the word or phrase is not to be
;; interpreted normally, but treated specially in some way: a non-standard or ironic meaning,
;; perhaps, something spoken by another person, or something not to be taken literally.
(define quotation-mark-list '(list x y) (* x y)
        (let* ((list x y) (* x y))
              (lambda ((list x y) (* x y))
                      (if (list x y)
                          (list x y)
                          (if (* x y)
                              (* x y))))))                             

;; So why do you want to stop newLISP evaluating things? You'll soon meet some examples
;; where you quote things to prevent newLISP thinking that the ﬁrst item in a list is a function.
;; For example, when you store information in a list, you don't want newLISP to evaluate them
;; in the usual way:
(define stop-newlisp-list '(list)
        (let* ((list))
              (dolist (i list)
                      (format t "~a~ stop-things:.%" i))))
                      

;; You don't want newLISP to look for functions called 2006 or "Arthur". Besides, 2006 isn't
;; a valid function name, because it starts with a digit, and function names can't start with
;; a double quotation mark, so in either case your program will stop with an error. Therefore
;; you quote the lists to stop their ﬁrst elements being used as functions rather than data:
(define newlisp-name-list '(list name)
        (let* ((list name))
              (lambda (list name)
                      (format t "hello, world!\n" name))))                              
                                                         


;; newLISP's ability to treat expressions as data - and data as expressions - is discussed in
;; more detail later.
(define ability-treat-list '(list data)
        (let* ((list data))
              (lambda (list data)
                      (format t "hello, world!\n" data))))
                                                         
                
                
;; Use the vertical apostrophe (ASCII code 39) to quote lists and symbols. Sometimes, text
;; editors or other programs change these simple vertical apostrophes into curly quotation
;; marks. These don't do the same job, so you will have to change any smart quotes to
;; vertical apostrophes.
(define apostrophes-vertical-list '(quote data)
        (let* ((quote data))
              (lambda (quote data)
                      (format t "hello, world!\n" data)))) 


;; 2.6.1 Symbols and quotes
;; A symbol is a newLISP thing with a name. You deﬁne something in your code and assign
;; a name to it. Then you can refer to that something later on, using the name rather than
;; the contents. For example, after typing this:
(define symbols-and-quotes '(quote data) (set 'data name)
        (let* ((quote data))
              (lambda (quote data)
                      (format t "hello, world!\n" data)))
        (let* ((set 'data name))
              (lambda (set 'data name)
                      (format t "hello, world!\n" 'data name))))                                                          
                 
;; there's now a new symbol called alphabet whose value is a string consisting of the 26 letters
;; of the alphabet. The set function stores the string of characters from a to z in the symbol
;; alphabet. Now this symbol can be used elsewhere, and will evaluate to the alphabet whenever
;; it's used. Whenever you want to use the 26 letters of the alphabet, you use this symbol
;; without quoting it. For example, here's the upper-case function:
                                         

(define symbols-and-upper-case '(quote data) (upper-case data)
        (let* ((quote data))
              (lambda (quote data)
                      (format t "hello, world!\n" data)))
        (let* ((upper-case data))
              (lambda (upper-case data)
                      (format t "hello, world!\n" data))))                                                          
                                         

;; I use the symbol without quoting it, because I want newLISP to use the value of the
;; symbol, not its name. I'm really not interested in upper-casing the word alphabet, but
;; the alphabet itself. newLISP hasn't permanently changed the value of the symbol, in this
                                         
(define symbols-and-upper-case '(quote data) (upper-case data)
        (let* ((quote data))
              (lambda (quote data)
                      (format t "hello, world!\n" data)))
        (let* ((upper-case data))
              (lambda (upper-case data)
                      (println (upper-case data)))))                                                         
                                         
