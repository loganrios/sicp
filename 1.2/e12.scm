(define (pas row col)
  (cond ((= col 1) 1)
        ((= col row) 1)
        (else (+ (pas (- row 1) (- col 1))
                 (pas (- row 1) col)))))
; 1
; 1 1
; 1 2 1
; 1 3 3 1
; 1 4 6 4 1
; 1 5 10 10 5 1

(pas 5 3) ; = 6
(pas 6 2) ; = 5
(pas 6 3) ; = 10
(pas 7 4) ; = 20
