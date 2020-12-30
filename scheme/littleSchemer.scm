(define first car)
(define rest cdr)

(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))


