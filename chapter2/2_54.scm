(define (equal? items1 items2)
  (cond ((AND (null? items1) (null? items2)) true)
        ((not (eq? (car items1) (car items2))) false)
        (else (equal? (cdr items1) (cdr items2)))))
