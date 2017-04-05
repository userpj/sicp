(define (reverse items)
  (if (null? (cdr items))
      items
      (append (reverse (cdr items)) (list (car items)))))

(define (deep-reverse items)
  (define (iter items result)
    (cond ((null? items) result)
          ((not (pair? (cdr items))) (iter (car items) (cons (car items) result)))
          (else (iter (cdr items) (cons (deep-reverse (car items)) result)))))
  (iter items '()))
        
