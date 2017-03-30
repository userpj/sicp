(define (fast-expt b n)
   (fast-expt-iter b n 1))

(define (fast-expt-iter b n res)
   (cond ((= n 0) res)
         ((even? n) (fast-expt-iter (square b) (/ n 2) res))
         (else (fast-expt-iter b (- n 1) (* res b)))))

(define (even? n)
   (= (remainder n 2) 0))
