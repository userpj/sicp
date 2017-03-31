(define (simp f a b n)
   (define h (/ (- b a) n))
   (define (y k) (f (+ a (* k h))))
   (define (factor k) (cond ((OR (= k 1) (= k n)) 1)
                            ((odd? k) 4)
                            (else 2)))
   (define (term k) (* (factor k) (y k)))
   (define (add k) (+ k 1))
   (* (/ h 3) (sum term 0 add n)))


(define (sum term a next b)
    (if (> a b)
        0
        (+ (term a)
           (sum term (next a) next b))))

(define (cube a) (* a a a))
