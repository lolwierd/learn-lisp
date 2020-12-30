(load "pmatch.scm")
;; (define add1 (lambda (x) (+ x 1)))
(define eval-expr
  (lambda (expr env)
    (pmatch expr
            [,n (guard (number? n))
                n]
            [(add1 ,e)
             (add1 (eval-expr e env))]
            [(zero? ,e)
             (zero? (eval-expr e env))]
            [(null? ,e)
             (null? (eval-expr e env))]
            [(sub1 ,e)
             (sub1 (eval-expr e env))]
            [(* ,e1 ,e2)
             (* (eval-expr e1 env)
                (eval-expr e2 env))]
            [(if ,t ,c, a)
             (if (eval-expr t env)
                 (eval-expr c env)
                 (eval-expr a env))]
            ;; Following lines are supposed to be beautiful but the beauty is lost on me. Help plij. :(
            ;; The rest of the code sans the top one is turing complete.
            ;; https://www.youtube.com/watch?v=OyfBQmvr2Hc
            [,x (guard (symbol? x))
                (env x)]
            [(lambda (,x) ,body)
             (lambda (arg)
               (eval-expr body (lambda (y)
                                 (if (eq? x y)
                                     arg
                                     (env y))))
               )]
            [(,rator ,rand)
             ((eval-expr rator env)
              (eval-expr rand env))]
            )))
