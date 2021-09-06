(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 3 4)

;; int a_plus_abs_b(int a, int b) {
;;   if (b < 0)
;;     return a - b;
;;   else
;;     return a + b;
;; }
