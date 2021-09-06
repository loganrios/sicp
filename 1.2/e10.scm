(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1) (A x (- y 1))))))

(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (h n) (A 2 n))
(define (k n) (* 5 n n))
;; (k n) = (* 5 (square n))
(A 1 10)
(A 2 4)
(A 3 3)
(f 9)
;; (f n) is (* n 2)
(g 4)
;; (g n) is 2^n
(h 2)
(A 2 5)
(A 1 (A 2 4))
(A 1 (A 1 (A 2 3)))
(A 1 (A 1 (A 1 (A 2 2))))
(A 1 (A 1 (A 1 (A 1 (A 2 1)))))
(A 1 (A 1 (A 1 (A 1 2))))
(A 1 (A 1 (A 1 (A 0 (A 1 1)))))
(A 1 (A 1 (A 1 (* 2 2))))
(A 1 (A 1 (A 1 4)))
(A 1 (A 1 (A 0 (A 1 3))))
(A 1 (A 1 (* 2 (A 1 3))))
(A 1 (A 1 (* 2 (A 0 (A 1 2)))))
(A 1 (A 1 (* 2 (* 2 (A 1 2)))))
(A 1 (A 1 (* 2 (* 2 (A 0 (A 1 1))))))
(A 1 (A 1 (* 2 (* 2 (* 2 2)))))
(A 1 (A 1 (* 2 (* 2 (* 2 2)))))
(A 1 (A 1 32))

(h n) ; 2 ^ n ^ n