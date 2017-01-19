;;; This procedure takes a list L as an arguement.
;;; Returns a reversed list with the sublists reversed.
(DEFINE (reverse-general L)
        (COND
         ((NULL? L) L)
         ((LIST? (CAR L)) (append (reverse-general (CDR L)) (CONS (reverse-general (CAR L)) '())))
         (ELSE (append (reverse-general (CDR L)) (LIST(CAR L))))))


;;; This procedure takes a list L as an arguement.
;;; Returns the simple sum of numbers not in nested lists in L.
(DEFINE (sum-up-numbers-simple L)
        (COND
         ((NULL? L) 0)
         ((LIST? (CAR L)) +0)
         ((NUMBER? (CAR L)) (+(CAR L) (sum-up-numbers-simple (CDR L))))
         (ELSE (sum-up-numbers-simple (CDR L)))))