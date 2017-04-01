(define (product term a next b)
   (if (> a b)
       1
      (* (term a) (product term (next a) next b))))

(define (pi n)
  (/ (* 4 (product term-up 1 next n)) (product term-down 1 next n)))

(define (next k) (+ k 1))
(define (term-up k) (* 2 (next-up k)))
(define (next-up k)
  (if (even? k)
      (/ (+ k 2) 2)
      (/ (+ k 1) 2)))
(define (term-down k) (+ (* 2 (next-down k)) 1))
(define (next-down k)
  (if (even? k)
      (/ k  2)
      (/ (+ k 1) 2)))
