(define (smallest-divisor n)
   (divisor n 2))

(define (divisor n a)
   (cond ((> (square a) n) n)
         ((= (remainder n a) 0) a)
         (else (divisor n (+ a 1)))))
