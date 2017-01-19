;;; This procedure takes a list L as an arguement.
;;; Returns a reversed list with the sublists reversed.
(DEFINE (reverse-general L)
        (COND
         ((NULL? L) #F)
         ((LIST? (CAR L)) (append (reverse-general (CDR L)) (list (reverse-general (car l)))))
         (else (append (reverse-general (CDR L)) (list (CAR L))))))

(reverse-general (QUOTE (a f)))