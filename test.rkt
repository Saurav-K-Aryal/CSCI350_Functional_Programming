(load "main.rkt")
(#%require schemeunit)

;;; Unit Test Cases for reverse-general
(check-equal? (reverse-general '()) '())
(check-equal? (reverse-general '(A B C)) '(C B A))
(check-equal? (reverse-general '(A B ())) '(() B A))
(check-equal? (reverse-general '((A B C))) '((C B A)))
(check-equal? (reverse-general '((A B C) (D E F))) '((F E D) (C B A)))
;;;(check-equal? (reverse-general '(A (B C) ((D E) F) G)) '(G ((F (E D) (C B) A))))
(check-equal? (reverse-general '(1 (2 3) (4 (A (B (C D)))))) '(((((D C) B) A) 4) (3 2) 1))

(DISPLAY "All test cases for reverse-general pass!")
