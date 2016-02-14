;; To run tests from the command line
;; $ emacs -batch -l ert -l multiples-tests.el -f ert-run-tests-batch-and-exit
;; or while in buffer
;; <M-x> eval-buffer
;; <M-x> ert <enter> t <enter>

;; Load the file under test
(load-file "multiples.el")

;; each test is wrapped in ert-deftest
(ert-deftest multiples-to-10 ()
  ;; each assertion is either a should, should-not or should-error
  (should (= 23 (multiples_to 10))))

(ert-deftest multiples-to-1000 ()
  (should (= 233168 (multiples_to 1000))))

;; this adds 'multiples-test to the global features list so that
;; anything requiring it knows whether it has already been loaded or not
(provide 'multiples-test)
