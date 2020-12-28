;;; Continuation
;;; https://www.youtube.com/watch?v=Ju3KKu_mthg
(define call/cc call-with-current-continuation)

(let ((a (call/cc 
           (lambda (mc)
             mc "Hello"))))
  (display a)
  (newline))

(let ((a (call/cc 
        (lambda (mc) 
          mc))))
  ;;; Continuations are procedures
  (if (procedure? a)
  (begin 
    (display "First Time Bois!\n")
    (a "Second Time Bois!!")))
  (begin
    (display a)
    (newline)))




