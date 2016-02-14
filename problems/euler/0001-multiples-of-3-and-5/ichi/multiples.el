;; cl-lib needed for a filter function (remove-if-not)
;; number-sequence like pythons range function
(require 'cl-lib)

(defun multiples_to (limit)
  (apply '+ (cl-remove-if-not
             (lambda (x) (or (zerop (% x 3))
                             (zerop (% x 5))))
             (number-sequence 1 (1- limit)))))


(provide 'multiples)

                              
