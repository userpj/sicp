(define (sum term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (term (next a)) (+ result (term a)))))
  (iter a 0))
