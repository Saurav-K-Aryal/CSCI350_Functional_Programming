(load "main.rkt")
(#%require schemeunit)

;;; Unit Test Cases for reverse-general
(check-equal? (reverse-general '()) '())
(check-equal? (reverse-general '(A B C)) '(C B A))
(check-equal? (reverse-general '(A B ())) '(() B A))
(check-equal? (reverse-general '((A B C))) '((C B A)))
(check-equal? (reverse-general '((A B C) (D E F))) '((F E D) (C B A)))
(check-equal? (reverse-general '(A (B C) ((D E) F) G)) '(g (f (e d)) (c b) a))
(check-equal? (reverse-general '(1 (2 3) (4 (A (B (C D)))))) '(((((D C) B) A) 4) (3 2) 1))

(DISPLAY "All test cases for reverse-general are done!")
(newline)

;;; Unit Test Cases for sum-up-numbers-simple
(check-equal? (sum-up-numbers-simple '()) 0)
(check-equal? (sum-up-numbers-simple '(100 200)) 300)
(check-equal? (sum-up-numbers-simple '(100 a)) 100)
(check-equal? (sum-up-numbers-simple '(a)) 1)
(DISPLAY "All test cases for sum-up-numbers-simple are done!")
