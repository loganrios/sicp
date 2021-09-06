(define (p) (p))
(define (test x y)
  (if (= x 0) 0 y))

(test 0 (p))

;; normal order (op x y)
;;  will evaluate op, then x, then y
;; applicative order (op x y)
;;  will evalute x, then y, then (op x y)

;; (if (= (p) 0 ) 0 y)
;; in normal eval, this would be (p)
;; in applicative eval, this will run forever,
;; as it tries to simplify (p) to an atom.
