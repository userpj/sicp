(define (tan-cf x k)
  (define (f i)
    (display i)
    (newline)
    (define (squ x) 
      (if (= i 1) 
          x
          (square x)))
    (cond ((= i k) (/ (squ x)  (- (* 2 i) 1.0)))
          (else (/ (squ x) (- (- (* 2 i) 1.0) (f (+ i 1)))))))
  (f 1))
