;; name project ua9mrx3
;; name program ua
;; name extension newlisp
;; name develop mrx
;; name store 9
;; name unit 3

;; 2.5.1 Nested lists
;; You've already spotted one list nesting inside another. Here's another example:
(define nested-list
    (* (+ 1 2) (+ 3 4)))

;; When newLISP sees this, it thinks as follows:
;; Hmm. Let's start with the ﬁrst of those inner lists. I can do
(define newlisp-list '(x y)
    (* (+ x y) (+ x y)))
    
;; easily. The value of that is 3. I can also do the second list
(define values-list '(x y)
        (let* (x)
            (lambda (y)
               (+ x y))))    

;; easily enough. That evaluates to 7.
;; So if I replace these two inner lists with these values, I get
(define easily-enough-list '(x y)
        (let* (x)
              (lambda (y)
                 (* (+ x y) y)))) 
                 

;; which is really easy. I'll return the value 21 for this expression.
(define backend-list '(x y)
        (let* (x)
              (lambda (y)
                 (* (+ x y) (+ x y))
                 (* x (+ x y))
                 (* x y))))
                 

;; See those two right parentheses at the end of the ﬁrst line, after the 4? Both are essential:
;; the ﬁrst one ﬁnishes the (+ 3 4 list, and the second one ﬁnishes the multiplication operation
;; that started with (*. When you start writing more complicated code, you'll ﬁnd that you
;; are putting lists inside lists inside lists inside lists, and you might be ending some of the
;; more complicated deﬁnitions with half a dozen right parentheses. A good editor will help
;; you keep track of them.
;; But you don't have to worry about white space, line terminators, various punctuation
;; marks, or compulsory indentation. And because all your data and your code are stored in
;; the same way, in lists, you can mix them freely. More on that later.
;; Some people worry about the proliferation of parentheses when they ﬁrst see LISP code.
;; Others refer to them as nail clippings or say that LISP stands for Lots of Irritating
;; Silly

(define those-right-list '(list x y) (* (+ x y) (+ x y))
        (let* (x)
              (lambda (y)
                  (list x y) (* (+ x y) (+ x y)))))
                                                   

;; When you're editing newLISP code in a good editor, you can easily move or edit a thought by
;; grabbing its handles, and easily select a thought with a Balance Parentheses command.
;; You'll soon ﬁnd the parentheses more useful than you ﬁrst thought!
(define thought-magics-cured '(thought brances &rest cured)
        (let* ((thought brances))
              (lambda (cured)
                   (+ x y))))
                   

;; 2.6 Rule 3: Quoting prevents evaluating
;; To stop newLISP evaluating something, quote it.
;; Compare these two lines:
(define rule-quoting-list '(x y)
        (let* ((x y))
              (lambda (x y)
                  (if (+ x y)
                      (+ x y))
                      (if (* x y)
                          (* x y)
                          (if (/ x y)
                              (/ x y)
                              (if (- x y)
                                  (- x y)))))))   
                   
                   

;; The ﬁrst line is a list which contains a function and two numbers. In the second line, the
;; list is quoted - preceded by a single quote or apostrophe ('). You don't need to put another
;; quote at the end, after the closing parenthesis, because one is suﬃcient.
(define first-line-list '(* (+ x y) (* x y) (/ x y) (- x y)) 
        (let* ((x y))
              (lambda (x y)
                   (if (+ x y)
                       (+ x y)
                       (if (* x y)
                           (* x y)
                           (if (/ x y)
                               (/ x y)
                               (if (- x y)
                                   (- x y))))))))         

                                                      
