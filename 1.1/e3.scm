(define (square x) (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (sum-squares-of-largest-two x y z)
  (cond ((and (> (+ x y) (+ x z)) (> (+ x y) (+ y z))) (sum-of-squares x y))
        ((and (> (+ x z) (+ x y)) (> (+ x z) (+ y z))) (sum-of-squares x z))
        ((and (> (+ y z) (+ x y)) (> (+ y z) (+ x z))) (sum-of-squares y z))))

(sum-squares-of-largest-two 3 4 5)
;; 16 25
;; neat!
;; (and (> (+ x y) (+ x z)) (> (+ x y) (+ y z))) (sum-of-squares x y)
