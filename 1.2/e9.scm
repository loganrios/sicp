;; first (recursive)
(define (+ a b)
  (if (= a 0) b (inc (+ (dec a) b))))

(+ 4 5)
(if (= 4 0) 5 (inc (+ (dec 4) 5)))

(if (= 4 0) 5 (inc (if (= 3 0) 5 (inc (+ (dec 3) 5)))))
(if (= 4 0) 5 (inc (if (= 3 0) 5 (inc (if (= 2 0) 5 (inc (+ (dec 2) 5)))))))

;; second (iterative)
(define (+ a b)
  (if (= a 0) b (+ (dec a) (inc b))))

(+ 4 5)
(if (= 4 0) 5 (+ (dec 4) (inc 5)))
(if (= 3 0) 6 (+ (dec 3) (inc 6)))
(if (= 2 0) 7 (+ (dec 2) (inc 7)))
(if (= 1 0) 8 (+ (dec 1) (inc 8)))
(if (= 0 0) 9 (+ (dec 0) (inc 9)))
; returns 9
