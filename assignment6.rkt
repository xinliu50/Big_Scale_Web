(define mystring "sxdd")
(define empty "")
(define n (- (string-length mystring) 1))
(define string1 "")
(define string2 "")
(define (myfunc x y n)
    (if (= n -1)
       y
         (myfunc x (string-append y (substring x n (+ 1 n))) (- n 1))
        )
   
    )
(define (is-palindrome x y n)
    (let ((i (myfunc x y n)))
       (if (string=? i x)
           
        #t
        #f
        )
      )
 )
(define (sum n)
    (map (lambda (x) (+ x n)) '(1 2 3 4))
    )
(define error #f)
(call-with-current-continuation (lambda (k)
              (set! error
                (lambda error-arguments
                  (display ">>>> ERROR ")
                  (newline)
                  (k error-arguments)))
              'done)) 