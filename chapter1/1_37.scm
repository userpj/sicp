(define (cont-frac n d k)
  (define (f i)
    (if (= i k)
        (/ (n i) (d i))
        (/ (n i) (+ (d i) (f (+ i 1))))))
   (f 1))

(define (test k)
  (cont-frac (lambda (i) 1.0) (lambda (i) 1.0) k))

(define (frac-iter n d k)
  (define (iter i result)
    (if (= i 0)
    result
    (iter (- i 1) (/ (n (- i 1)) (+ (d (- i 1)) result)))))
  (iter k 0))

(define (iter-test k)
  (cont-frac (lambda (i) 1.0) (lambda (i) 1.0) k))
