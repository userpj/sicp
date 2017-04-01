(define (cont-frac n d k)
  (define (f i)
    (if (= i k)
        (/ (n i) (d i))
        (/ (n i) (+ (d i) (f (+ i 1))))))
   (f 1))

(define (ouler k)
  (cont-frac (lambda (i) 1.0) 
             (lambda (i) 
               (if (= (remainder i 3) 2)
                   (* (/ 2 3) (+ i 1))
                   1.0))
             k))

(define (e k)
  (+ 2 (ouler k)))
