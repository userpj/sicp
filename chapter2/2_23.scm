(define (for-each proc items)
  (if (null? items)
      '()
      (begin
        (proc (car items))
        (for-each proc (cdr items)))))


