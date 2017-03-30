(define (pa a b)
  (cond ((< a b) 0)
        ((= a 0) 0)
        ((= b 0) 0)
        ((= a b) 1)
        (else (+ (pa (- a 1) (- b 1)) (pa (- a 1) b)))))
      
