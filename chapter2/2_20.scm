(define (even f items)
  (if (null? items)
     '()
      (if (f (car items))
          (cons (car items) (even f (cdr items)))
          (even f (cdr items)))))

(define (same-parity x . w)
  (if (even? x)
      (cons x (even even? w))
      (cons x (even odd? w))))
