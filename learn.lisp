;; Learning common lisp using sbcl (also clisp), sly and Paradigms of Artificial Intelligence Programming Case Studies in Common Lisp
;; (Afterthought. This book is shit if trying to learn lisp with 0 knowledge. Trying land of lisp)
;; Lisp - works by defining operations on list. Very powerful. Programmable language.
;; Lisp - Short for LISt Processing.

;; Objects - anything represented in the memory of the computer.
;; Works on parenthized prefix notation. Eg.
(+ 2 2)
;; => 2+2 => 4
;; Also + can take many arguments.
(+ 1 2 3 4 5 6 7 8 9 10)
;; => 55
;; These calls are called lisp expressions and the arguments to these calls are atoms.
;; Lisp execution - First arguments to the function are evaluated, then the function call.
;; Fundamentals - Many programming languages have expressions and statements.
;; Expressions are statements that return values. eg. 1+2
;; Statements in turn do not return values, but have an effect. eg. x = 1+2
;; Example of an effect - in a body of a for loop setting the value of the variable running the loop to 0, so as to restart the loop.
;; The line of code which changes the variable returns nothing but has an effect on the outer for loop.

;; Lisp has only expressions. i.e every statement in lisp returns something, this does not mean they cannot have an effect.
;; Fewer tokens then other languages. - Lexical rules simpler
;; Statements are delimited by parens.

;; TOKEN - ' - serves to return the expression as data and not evaluate as an object.
;; WHY -
(append '(Ayaan Yusufali) '(Retiwala))
;; If not for ', Ayaan Yusufali would have been evaluated as function Ayaan with atom Yusufali, which is wrong af.
;; So, there is a need to interpret this as data and that's where ' comes in play.
;; And append ofc concats two strings.(For basic understanding, more robust explanation below)
;; And as expected,
'(+ 2 2) ;; => (+ 2 2)

;; One intresting thing to note is that
'2 ;; => 2
;; and also
2 ;; => 2   
;; '2 and 2 both evaluate as 2 because in lisp numbers evaluate to themselves.
;; Kinda apparent considering + is a function and as mentioned before before evaluating a function, all its arguments are evaluated.
;; so for (+ 2 3), the atoms 2 and 3 evaluate to themselves, then the function call is evaluated.

;; Lisp provides over 700 inbuilt functions. EG. length, append etc.
(length '(1 2)) ;; => 2
;; length ofc gives the length of the list
;; append appends lists.
;; Another counterpart of append is list.
(list 1 2 'Ayaan '(3)) ;; => (1 2 AYAAN (3))
(append '(1) '(2) '(Ayaan)) ;; => (1 2 AYAAN)
;; List can take elements and lists and outputs a list.
;; Whereas append takes lists and appends them together returning a list containg all the lists.

;; One important thing to note is lisp is case insensitive.
;; ayAAn, Ayaan, ayaan are all represented as AYAAN.

;; Setting Varibles
;; lisp provides syntax to set varibles.
(setf name 'Ayaan) ;; => AYAAN
name ;; => AYAAN
;; As apparent, setf does not exactly behave like a function.
;; Functions as told before evaluate arguments first and then the function call.
;; But in this case name will not be evaluated to anything.
;; So if setf was a function, it would fail.
;; Fortunately, setf is a syntactical construct provided by lisp which helps us in defining variables.
;; These special syntactical constructs are called Special Forms.
;; There are a bunch of them in lisp.
;; For people bound to get lost in terminology, setf can be referred to as Special form operator, and (setf x 0) as a special form expression.
;; Also as it turns out the ' used so far is the quote Special form operator.
;; ' is just a shorter way of writing quote
;; Which means,
'(ayaan) ;; => AYAAN
(quote ayaan) ;; => AYAAN
;; are the same thing.

;; LISTS
;; Some list processing functions.
(setf coders (list name 'Akshar 'Suraj 'Mastan)) ;; => (AYAAN AKSHAR SURAJ MASTAN)
(first coders) ;; => AYAAN
(second coders) ;; => AKSHAR
(third coders) ;; => SURAJ
(fourth coders) ;; => MASTAN
(fifth coders) ;; => NIL
(length coders) ;; => 4
(rest coders) ;; => (AKSHAR SURAJ MASTAN)
(last coders 2) ;; => (SURAJ, MASTAN)
(last coders) ;; => (MASTAN)
;; NIL represents empty list. (Also used to denote false)
;; rest returns the list sans the first element.
;; last takes two arguments the list and how many elements from end required (n). It then outputs the last n elements of the list. n defaults to 1.
;; Other functions are pretty straight forward.
;; Lists can be multi dimensional.
(setf multiList (list '(3) '((2)) 1)) ;; => ((3) ((2)) 1)
(first (second multiList)) ;; => (2)
;; Different ways to construct Lists.
(cons 'NJRN coders) ;; => (NJRN AYAAN AKSHAR SURAJ MASTAN)
;; cons (stands for construct) takes an element and a list and inserts the element at the front of the list.
;; list and append are two other ways to construct lists and have been descirbed earlier.
;; One imp point is that these functions do not modify existing lists but create new ones.
;; This is not a comprehensive list of list processing functions.

;; FUNCTIONS
;; Functions are defined using the defun Special form
(defun aFunc(name)
  "An example Function"
  name)
(aFunc 'ayaan) ;; => AYAAN
;; The second line of the function containing a string is the documentation of the function.
;; It is optional, but proves crucial in a system with lots of functions.
;; The fields inside parens are arguments to the function.
;; After the documentation comes the body of the function.



















