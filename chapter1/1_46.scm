(define (iterative f g)
  (lambda (x)
     (if (f x (g x))
         (g x)
         ((iterative f g) (g x)))))


(define tolerance 0.00001)
(define (close-enough? v1 v2)
  (< (abs (- v1 v2)) tolerance))

(define (fixed-point f first-guess)
   ((iterative close-enough? f) first-guess))

(define (sqrt x)
  (fixed-point (lambda (y) (* (/ 1 2) (+ y (/ x y)))) 1.0))
