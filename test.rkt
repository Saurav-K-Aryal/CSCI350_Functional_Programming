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
(check-equal? (sum-up-numbers-simple '(a)) 0)
(check-equal? (sum-up-numbers-simple '(a 100 b 200 c 300 d)) 600)
(check-equal? (sum-up-numbers-simple '(())) 0)
(check-equal? (sum-up-numbers-simple '((100))) 0)
(check-equal? (sum-up-numbers-simple '(100 (200))) 100)
(check-equal? (sum-up-numbers-simple '(a 100 b (200) c 300 d)) 400)

(DISPLAY "All test cases for sum-up-numbers-simple are done!")
(newline)

;;; Unit Test Cases for sum-up-numbers-general
(check-equal? (sum-up-numbers-general '()) 0)
(check-equal? (sum-up-numbers-general '(100)) 100)
(check-equal? (sum-up-numbers-general '(100 200)) 300)
(check-equal? (sum-up-numbers-general '(a)) 0)
(check-equal? (sum-up-numbers-general '(a 100 b 200 c 300 d)) 600)
(check-equal? (sum-up-numbers-general '(())) 0)
(check-equal? (sum-up-numbers-general '((100))) 100)
(check-equal? (sum-up-numbers-general '(100 (200))) 300)
(check-equal? (sum-up-numbers-general '(a 100 b (200) c 300 d)) 600)
(check-equal? (sum-up-numbers-general '(a 100 ((b ((200) c)) 300 d))) 600)

(DISPLAY "All test cases for sum-up-numbers-general are done!")
(newline)

;;; Unit Test Cases for min_list_val
(check-equal? (min_list_val '() 92337203654775807) 92337203654775807)
(check-equal? (min_list_val '(a 100 b 200 c 300 d) 92337203654775807) 100)
(check-equal? (min_list_val '(a 300 b 100 c 200 d) 92337203654775807) 100)
(check-equal? (min_list_val '(a 200 b 300 c 100 d) 92337203654775807) 100)
(check-equal? (min_list_val '(100) 92337203654775807) 100)
(check-equal? (min_list_val '(a) 92337203654775807) 92337203654775807)
(check-equal? (min_list_val '(a 100) 92337203654775807) 100)
(check-equal? (min_list_val '(200 b) 92337203654775807) 200)
(check-equal? (min_list_val '(a b c) 92337203654775807) 92337203654775807)
(check-equal? (min_list_val '(100 200 300) 92337203654775807) 100)
(check-equal? (min_list_val '(300 200 100) 92337203654775807) 100)

(DISPLAY "All test cases for min_list_val are done!")
(newline)

