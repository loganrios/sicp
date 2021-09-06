(define (square x) (* x x))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

; actual problem

(expt 5 3)
(* 5 (expt 5 2)) ; 5 * 5^2
(* 5 (* 5 (expt 5 1))) ; 25 * 5^1
(* 5 (* 5 (* 5 (expt 5 0)))) ; 125 * 5^0

(define (exptb b n product)
  (cond ((= n 0) product)
        ((even? n) (exptb (square b) (/ n 2) product))
        (else (exptb b (- n 1) (* product b)))))

(exptb 5 4 1)
(exptb 5 3 5)
(exptb 5 2 25)
(exptb 5 1 125)
(exptb 5 0 625)

;; note that i gave in and had to cheat on this ._.
