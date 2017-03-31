(define (smallest-divisor n)
   (divisor n 2))

(define (divisor n a)
   (cond ((> (square a) n) n)
         ((= (remainder n a) 0) a)
         (else (divisor n (+ a 1)))))

(define (prime? n)
   (= n (smallest-divisor n)))

(define (least_prime n)
   (cond ((even? n) (least_prime (+ n 1) ))
         (else (if (prime? n)
                   n
                   (least_prime (+ n 1))))))

(define (timed-prime-test n)
   (let ((start-time (real-time-clock)))
        (least_prime n)
        (- (real-time-clock) start-time)))
