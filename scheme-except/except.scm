(define (try-car v)
 (let ((orig (current-exception-handler)))
   (with-exception-handler
    (lambda (exn)
      (orig (make-composite-condition
	     (make-property-condition
	      'not-a-pair
	      'value
	      v)
	     exn)))
    (lambda () (car v)))))
 
(try-car '(1))
;=> 1

(handle-exceptions exn
		   (if ((condition-predicate 'not-a-pair) exn)
		       (begin
			(display "Not a pair: ")
			(display
			 ((condition-property-accessor 'not-a-pair 'value) exn))
			(newline))
		       (abort exn))
  (try-car 0))
; displays "Not a pair: 0"

(let* ((cs-key (list 'color-scheme))
       (bg-key (list 'background))
       (color-scheme? (condition-predicate cs-key))
       (color-scheme-background 
	(condition-property-accessor cs-key bg-key))
       (condition1 (make-property-condition cs-key bg-key 'green))
       (condition2 (make-property-condition cs-key bg-key 'blue))
       (condition3 (make-composite-condition condition1 condition2)))
  (and (color-scheme? condition1)
       (color-scheme? condition2)
       (color-scheme? condition3)
       (color-scheme-background condition3)))
; => 'green or 'blue
