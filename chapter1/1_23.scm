(define (smallest-divisor n)
   (divisor n 2))

(define (divisor n a)
   (cond ((> (square a) n) n)
         ((= (remainder n a) 0) a)
         (else (divisor n (next a)))))

(define (next n)
   (if (= n 2)
       3
       (+ n 2)))
