(define (add-interval x y)
  (make-interval (+ (lower-bound x) (lower-bound y))
                 (+ (upper-bound x) (upper-bound y))))
(define (sub-interval x y)
  (make-interval (- (lower-bound x) (upper-bound y))
                 (- (upper-bound x) (lower-bound y))))

(define (mul-interval x y)
  (let ((p1 (* (lower-bound x) (lower-bound y)))
        (p2 (* (lower-bound x) (upper-bound y)))
        (p3 (* (upper-bound x) (lower-bound y)))
        (p4 (* (upper-bound x) (upper-bound y))))
    (make-interval (min p1 p2 p3 p4)
                   (max p1 p2 p3 p4))))

(define (div-interval x y)
  (mul-interval x
                (make-interval (/ 1.0 (upper-bound y))
                               (/ 1.0 (lower-bound y)))))

(define (make-interval a b) (cons a b))

(define (upper-bound x) (max (car x) (cdr x)))
(define (lower-bound x) (min (car x) (cdr x)))
(define (print-interval x)
  (display "(")
  (display (lower-bound x))
  (display ",")
  (display (upper-bound x))
  (display ")")
  (newline))



(define a (make-interval 1 2))
(define b (make-interval 3 4))

(print-interval (add-interval a b))
(print-interval (mul-interval a b))
(print-interval (div-interval a b))
