;; cl-lib needed for a filter function (remove-if-not)
;; number-sequence like pythons range function
(require 'cl-lib)

(defun sum-even-fibs-to (limit)
  (interactive "n What is the limit you want to sum even fibs to?: ")
  (cl-labels ((even-fibs-to (a b sum)
                         (cond ((>= a limit) sum)
                               ((= (% a 2) 0) (even-fibs-to b (+ a b) (+ sum a)))
                               (t (even-fibs-to b (+ a b) sum)))))
          (let ((answer (even-fibs-to 0 1 0)))
            (message "The sum of even fibs up to %d is %d"
                     limit
                     answer)
            answer)))

(provide 'even-fibs)

                              
