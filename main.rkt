;;; This procedure takes a list L as an arguement.
;;; Returns a reversed list with the sublists reversed.
(DEFINE (reverse-general L)
        (COND
         ((NULL? L) L)
         ((LIST? (CAR L)) (append (reverse-general (CDR L)) (CONS (reverse-general (CAR L)) '())))
         (ELSE (append (reverse-general (CDR L)) (LIST(CAR L))))))