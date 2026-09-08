(defun without-last-rev (lst)
  (reverse (cdr (reverse lst))))

(defun without-last-subseq (lst)
  (subseq lst 0 (- (length lst) 1)))

(print (apply #'without-last-subseq (list '(a b c))))