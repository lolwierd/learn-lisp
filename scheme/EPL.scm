;; Recursively defining data

;; A natural number n is in S if and only if
;; 1. n=0.
;; 2. n−3 ∈ S.

;; inS? : n -> Bool
(define inS?
  (lambda (n)
    (if (zero? n)
        #t
        (if (>= (- n 3) 0)
            (inS? (- n 3))
            #f))))
