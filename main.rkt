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
         ((LIST? (CAR L)) (sum-up-numbers-simple (CDR L)))
         ((NUMBER? (CAR L)) (+(CAR L) (sum-up-numbers-simple (CDR L))))
         (ELSE (sum-up-numbers-simple (CDR L)))))


;;; This procedure takes a list L as an arguement.
;;; Returns the sum of the numbers even within the sublists of L.
(DEFINE (sum-up-numbers-general L)
        (COND
         ((NULL? L) 0)
         ((LIST? (CAR L))(+ (sum-up-numbers-general (CAR L)) (sum-up-numbers-general (CDR L))))
         ((NUMBER? (CAR L)) (+(CAR L) (sum-up-numbers-general (CDR L))))
         (ELSE (sum-up-numbers-general (CDR L)))))


;; This procedure takes a list L as an arguement and a number as arguements.
;; Returns the minimum number in the lists smaller than the passed number.
(DEFINE (min_list_val L min_val)
        (COND
         ((NULL? L) min_val)
         ((not (NUMBER? (CAR L))) (min_list_val (CDR L) min_val))
         ((< (CAR L) min_val) (min_list_val (CDR L) (CAR L)))
         (ELSE (min_list_val (CDR L) min_val))))


;; This procedure takes a list L as an arguement and two numbers as arguements.
;; Returns the minimum number in the lists >= than the passed limit number.
(DEFINE (max_min_val L limit_num max_diff)
        (COND
         ((NULL? L) (COND
                     ((EQ? max_diff 92337203654775807) #F)
                     (ELSE (+ (ABS max_diff) limit_num))))
         ((not (NUMBER? (CAR L))) (max_min_val (CDR L) limit_num max_diff))
         ((< (- (CAR L) limit_num) max_diff) (max_min_val (CDR L) limit_num (- (CAR L) limit_num)))
         (ELSE (max_min_val (CDR L) limit_num max_diff))))


;;; This procedure takes a list L as an arguement and a number as arguements.
;;; Returns a value just greater in one list than the minimum value in another list.
;(DEFINE (min-above-min L1 L2)
        ;(LET
         ;((min_li (min_list_val L1 92337203654775807)))
         ;)