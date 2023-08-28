(import (chicken process-context)) ; for "command-line-arguments"

(define (palindrome? x)
  (define (check left right)
    (if (>= left right)
        #t
        (and (char=? (string-ref x left) (string-ref x right))
             (check (add1 left) (sub1 right)))))
  (check 0 (sub1 (string-length x))))

(let ((arg (car (command-line-arguments))))
  (display 
   (string-append arg 
                  (if (palindrome? arg) 
                      " is a palindrome\n"
                      " isn't a palindrome\n"))))
