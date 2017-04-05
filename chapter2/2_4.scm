(define (cons-test x y)
  (lambda (m) (m x y)))

(define (car-test z)
  (z (lambda (p q) p)))

(define (cdr-test z)
  (z (lambda (p q) q)))
