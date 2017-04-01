(define (filtered-accumulate combiner null-value term a next b filter?)
  (if (> a b)
      null-value
      (if (filter? a)
        (combiner (term a) (filtered-accumulate combiner null-value term (next a) next b filter?))
        (filtered-accumulate combiner null-value term (next a) next b filter?))))


(define (smallest-divisor n)
   (divisor n 2))

(define (divisor n a)
   (cond ((> (square a) n) n)
         ((= (remainder n a) 0) a)
         (else (divisor n (+ a 1)))))

(define (prime? n)
   (= n (smallest-divisor n)))

(define (term n) n)
(define (inc n) (+ n 1))
(define (prime-n n)
  (filtered-accumulate + 0 term 0 inc n prime?))

(define (gcd x n)
  (if (= (remainder n x) 0)
      x
      (gcd (remainder n x) x)))

(define (gcd-product n)
  (define (gcd-prime? x)
          (= (gcd x n) 1))
  (filtered-accumulate * 1 term 1 inc n gcd-prime?))
