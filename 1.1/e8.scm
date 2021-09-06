(define (square x) (* x x))

(define (cube x) (* x x x))

(define (cimprove guess x)
  (/ (+ (/ x (square guess))
        (* 2 guess))
     3))

(define (cgood-enough? guess x)
  (< (abs (- (cube guess) x)) 0.1))

(define (curt-iter guess x)
  (if (cgood-enough? guess x)
      guess
      (curt-iter (cimprove guess x) x)))

(define (curt x)
  (curt-iter 1.0 x))

(curt 8)
(curt 1000)
