(define (fib-iter a b count)
  (if (= count 0)
      b
      (fib-iter (+ a b) a (- count 1))))

(define (fib n)
  (fib-iter 1 0 n))

(define (square x) (* x x))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

; the actual problem

(define qc (/ (+ 1 (sqrt 5))
              2))

(define yc (/ (- 1 (sqrt 5))
              2))

(define (pfib n)
  (/ (- (expt qc n) (expt yc n))
     (sqrt 5)))

(define x 45)
(pfib x)
(fib x)
; it works!
