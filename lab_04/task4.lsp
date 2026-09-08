(defun swap-first-last (lst)
    (append (last lst)
            (reverse (cdr (reverse (cdr lst))))
            (list (car lst))))

(print (apply #'swap-first-last (list '(a b c))))