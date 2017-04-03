(define (make-segment start end)
  (cons start end))

(define (make-point x y)
  (cons x y))

(define (x-point point)
  (car point))

(define (y-point point)
  (cdr point))

(define (start-segment segment)
  (car segment))

(define (end-segment segment)
  (cdr segment))

(define (mid-segment segment)
  (make-point (/ (+ (x-point start-segment) (x-point end-segment)) 2)
              (/ (+ (y-point start-segment) (y-point end-segment)) 2)))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (x-point p))
  (display ")"))
