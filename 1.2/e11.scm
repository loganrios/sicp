; recursive ed
(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))

(f 5)

; iterative ed
; (f 0) = 0
; (f 1) = 1
; (f 2) = 2
; (f 3) = (f 2) + (2 * (f 1)) + (3 * (f 0))
; (f 3) = 2 + 2 + 0 = 4
; (f 4) = (f 3) + (2 * (f 2)) + (3 * (f 1))
; (f 4) = 4 + 4 + 3 = 11
; (f 5) = (f 4) + (2 * (f 3)) + (3 * (f 2))
; (f 5) = 11 + 8 + 6
(define (fa n) (fiter 2 1 0 n))
(define (fiter a b c count)
  (cond ((< count 3) a)
        (else (fiter (+ a (* 2 b) (* 3 c))
                     a
                     b
                     (- count 1)))))
(fa 7)
(f 7)

; a represents (f (- n 1))
; b represents (f (- n 2))
; c represents (f (- n 3))
; we need to evaluate what a b c are
; before we can decrement count.

;; we need to change something about a b c
;; before we defer to the iteration.
;; probably that means calculating their result.
;; and then storing the result in a b c?
