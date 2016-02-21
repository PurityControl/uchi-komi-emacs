;; To run tests from the command line
;; $ emacs -batch -l ert -l multiples-tests.el -f ert-run-tests-batch-and-exit
;; or while in buffer
;; <M-x> eval-buffer
;; <M-x> ert <enter> t <enter>

;; Load the file under test
(load-file "even-fibs.el")

;; each test is wrapped in ert-deftest
(ert-deftest sum-even-fibs-to-100 ()
  ;; each assertion is either a should, should-not or should-error
  (should (= 44 (sum-even-fibs-to 100))))

(ert-deftest sum-even-fibs-to-4000000 ()
  (should (= 4613732 (sum-even-fibs-to 4000000))))

;; this adds 'multiples-test to the global features list so that
;; anything requiring it knows whether it has already been loaded or not
(provide 'even-fibs-test)
