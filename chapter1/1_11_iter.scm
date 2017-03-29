(define (f n)
  (if (< n 3)
  n
  (f_iter 0 1 2 0 n)))

(define (f_iter a b c counter n)
  (if (= counter (- n 3))
      (+ (* 3 a) (* 2 b) c)
      (f_iter b c (+ (* 3 a) (* 2 b) c) (+ counter 1) n)))
