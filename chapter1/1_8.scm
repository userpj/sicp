(define (cu_iter x y)
  (if (good_enough? x y)
      y
      (cu_iter x (improve x y))))

(define (good_enough? x y)
  (< (abs (- (cube y) x)) 0.001))

(define (improve x y)
   (/ (+ (/ x (* y y)) (* y 2)) 3))

(define (cube x)
  (* x x x))

(define (cu x)
  (cu_iter x 1.0))
