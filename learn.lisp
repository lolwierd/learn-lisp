;; Learning common lisp using sbcl, sly and Paradigms of Artificial Intelligence Programming Case Studies in Common Lisp
;; Lisp - works by defining operations on list. Very powerful. Programmable language.
;; Lisp - Short for list processing.

;; Objects - anything represented in the memory of the computer.
;; Works on parenthized prefix notation. Eg.
(+ 2 2)
;; => 2+2 => 4
;; Also + can take many arguments.
(+ 1 2 3 4 5 6 7 8 9 10)
;; => 55
;; These calls are called lisp expressions and the arguments to these calls are called atoms.
;; Lisp execution - First arguments (atoms) to the function are evaluated, then the function call.
;; Fundamentals - Many programming languages have expressions and statements.
;; Expressions are statements that return values. eg. 1+2
;; Statements in turn do not return values, but have an effect. eg. x = 1+2
;; Example of an effect - in a for loop setting the value of the variable running the loop to 0, so as to restart the loop.
;; The line of code which changes the variable returns nothing but has an effect on the outer for loop.

;; Lisp has only expressions. i.e every statement in lisp returns something, this does not mean they cannot have an effect.
;; Fewer tokens then other languages. - Lexical rules simpler
;; Statements delimited by parens.

;; TOKEN - ' - serves to return the expression as data and not evaluate as an object.
;; WHY -
(append '(Ayaan Yusufali) '(Retiwala))
;; If not for ', Ayaan Yusufali would have been evaluated as function Ayaan with atom Yusufali, which is wrong af.
;; So, we need to interpret this as data and that's where ' comes in play.
;; And append ofc concats two strings.
