;; cl-lib needed for a filter function (remove-if-not)
;; number-sequence like pythons range function
(require 'cl-lib)

(defun multiples_to (limit)
  (interactive "n What is the limit you want to sum multiples to?: ")
  (let ((answer (apply '+ (cl-remove-if-not
                           (lambda (x) (or (zerop (% x 3))
                                           (zerop (% x 5))))
                           (number-sequence 1 (1- limit))))))
    (message "The sum of multiples of 3 and 5 up to %d is %d"
             limit
             answer)
    answer))


(provide 'multiples)

                              
