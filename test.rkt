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

;;; Unit Test Cases for min-list-val
(check-equal? (min-list-val '() 92337203654775807) 92337203654775807)
(check-equal? (min-list-val '(a 100 b 200 c 300 d) 92337203654775807) 100)
(check-equal? (min-list-val '(a 300 b 100 c 200 d) 92337203654775807) 100)
(check-equal? (min-list-val '(a 200 b 300 c 100 d) 92337203654775807) 100)
(check-equal? (min-list-val '(100) 92337203654775807) 100)
(check-equal? (min-list-val '(a) 92337203654775807) 92337203654775807)
(check-equal? (min-list-val '(a 100) 92337203654775807) 100)
(check-equal? (min-list-val '(200 b) 92337203654775807) 200)
(check-equal? (min-list-val '(a b c) 92337203654775807) 92337203654775807)
(check-equal? (min-list-val '(100 200 300) 92337203654775807) 100)
(check-equal? (min-list-val '(300 200 100) 92337203654775807) 100)

(DISPLAY "All test cases for min-list-val are done!")
(newline)

;;; Unit Test Cases for max-min-val
(check-equal? (max-min-val '(a 100 b 200 c 300) 92337203654775807 184674407309551514) #F)
(check-equal? (max-min-val '() 100 184674407309551514) #F)
(check-equal? (max-min-val '(a 100 b 200 c 300) 92337203654775807 184674407309551514) #F)
(check-equal? (max-min-val '(a) 92337203654775807 184674407309551514) #F)
(check-equal? (max-min-val '() 92337203654775807 184674407309551514) #F)
(check-equal? (max-min-val '(a) 100 184674407309551514) #F)
(check-equal? (max-min-val '(a b c) 100 184674407309551514) #F)
(check-equal? (max-min-val '(a 200) 100 184674407309551514) 200)
(check-equal? (max-min-val '(200 100 300) 100 184674407309551514) 200)
(check-equal? (max-min-val '(a 200 b 100 c 300 d) 100 184674407309551514) 200)

(DISPLAY "All test cases for max-min-val are done!")
(newline)


;;; Integration Test Cases for min_above_min
(check-equal? (min-above-min '() '(a 100 b 200 c 300)) #F)
(check-equal? (min-above-min '() '(a 100 b 200 c 300)) #F)

(DISPLAY "All test cases for min-above-min are done!")
(newline)

